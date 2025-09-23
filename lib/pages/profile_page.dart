// profile_page.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'language_selection_page.dart';
import '../l10n/app_localizations.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  @override
  bool get wantKeepAlive => true;

  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;

  // Firebase instances
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
  }

  void _initializeAnimations() {
    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _fadeController, curve: Curves.easeInOut),
    );
    _fadeController.forward();
  }

  @override
  void dispose() {
    _fadeController.dispose();
    super.dispose();
  }

  Future<UserStatistics> _fetchUserStatistics(String userId) async {
    // Get base stats from the user document
    final userDoc = await _firestore.collection('users').doc(userId).get();
    final userData = userDoc.data() ?? {};
    final totalReports = userData['totalReports'] ?? 0;
    final verifiedReports = userData['verifiedReports'] ?? 0;

    // Calculate other stats by querying the reports collection
    final reportsQuery = await _firestore
        .collection('reports')
        .where('userId', isEqualTo: userId)
        .get();

    int pendingCount = 0;
    int rejectedCount = 0;

    for (var doc in reportsQuery.docs) {
      final status = doc.data()['status'];
      // Adjust status strings based on your actual data
      if (status == 'pending' || status == 'submitted' || status == 'under_review') {
        pendingCount++;
      } else if (status == 'rejected') {
        rejectedCount++;
      }
    }

    return UserStatistics(
      totalReports: totalReports,
      verifiedReports: verifiedReports,
      pendingReports: pendingCount,
      rejectedReports: rejectedCount,
    );
  }

  void _showEditProfileModal(UserProfile userProfile) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => EditProfileModal(
        userProfile: userProfile,
        onSave: (updatedProfile) async {
          final currentUser = _auth.currentUser;
          if (currentUser == null) {
             if (mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(AppLocalizations.of(context)!.profile_user_not_found),
                  backgroundColor: Colors.red,
                ),
              );
            }
            return;
          }

          try {
             await _firestore.collection('users').doc(currentUser.uid).update({
              'name': updatedProfile.name,
              'email': updatedProfile.email,
              'updatedAt': FieldValue.serverTimestamp(),
            });

            if (mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Row(
                    children: [
                      Icon(Icons.check_circle, color: Colors.white, size: 20),
                      SizedBox(width: 8),
                      Text(AppLocalizations.of(context)!.profile_updated_success),
                    ],
                  ),
                  backgroundColor: Colors.green,
                  behavior: SnackBarBehavior.floating,
                ),
              );
            }
          } catch(e) {
            if (mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(AppLocalizations.of(context)!.profile_update_failed(e)),
                  backgroundColor: Colors.red,
                  behavior: SnackBarBehavior.floating,
                ),
              );
            }
          }
        },
      ),
    );
  }

  void _showNotificationSettings() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const NotificationSettingsModal(),
    );
  }

  void _showPrivacySettings() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const PrivacySettingsModal(),
    );
  }

  void _showLanguageSelection(UserProfile userProfile) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LanguageSelectionPage(
          currentLanguage: userProfile.language,
          onLanguageSelected: (languageCode) async {
            try {
              final currentUser = _auth.currentUser;
              if (currentUser != null) {
                await _firestore.collection('users').doc(currentUser.uid).update({
                  'language': languageCode,
                  'updatedAt': FieldValue.serverTimestamp(),
                });
                // The StreamBuilder will handle the UI update automatically
              }
            } catch (e) {
              if (mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(AppLocalizations.of(context)!.profile_language_update_failed(e)),
                    backgroundColor: Colors.red,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              }
            }
          },
        ),
      ),
    );
  }

  void _handleLogout() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Row(
          children: [
            Icon(Icons.logout, color: Colors.red, size: 24),
            SizedBox(width: 8),
            Text(AppLocalizations.of(context)!.profile_logout),
          ],
        ),
        content: Text(AppLocalizations.of(context)!.profile_logout_confirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(AppLocalizations.of(context)!.profile_cancel),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.of(context).pop();
              try {
                await FirebaseAuth.instance.signOut();
                if (mounted) {
                  Navigator.of(context).pushReplacementNamed('/login');
                }
              } catch (e) {
                if (mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(AppLocalizations.of(context)!.profile_logout_failed(e)),
                      backgroundColor: Colors.red,
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                }
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: Text(AppLocalizations.of(context)!.profile_logout),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final currentUser = _auth.currentUser;

    if (currentUser == null) {
      // This should ideally not be reached if your auth flow is correct,
      // but it's a good safeguard.
      return Center(
        child: Text(AppLocalizations.of(context)!.profile_user_not_logged_in),
      );
    }

    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      stream: _firestore.collection('users').doc(currentUser.uid).snapshots(),
      builder: (context, userSnapshot) {
        if (userSnapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (!userSnapshot.hasData || userSnapshot.data?.data() == null) {
          return Center(child: Text(AppLocalizations.of(context)!.profile_could_not_load_data));
        }
        if (userSnapshot.hasError) {
          return Center(child: Text(AppLocalizations.of(context)!.profile_something_wrong(userSnapshot.error.toString())));
        }

        final userProfile = UserProfile.fromFirestore(userSnapshot.data!);

        return FutureBuilder<UserStatistics>(
          future: _fetchUserStatistics(currentUser.uid),
          builder: (context, statsSnapshot) {
            // We can show the profile even while stats are loading

            return FadeTransition(
              opacity: _fadeAnimation,
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildHeader(),
                      _buildUserInfoSection(userProfile),
                      const SizedBox(height: 24),
                      _buildStatisticsSection(statsSnapshot),
                      const SizedBox(height: 24),
                      _buildAccountOptionsSection(userProfile),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF1E3A8A), Color(0xFF3B82F6)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF3B82F6).withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.person_rounded,
              color: Colors.white,
              size: 28,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.profile_title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  AppLocalizations.of(context)!.profile_subtitle,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserInfoSection(UserProfile userProfile) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF3B82F6), Color(0xFF06B6D4)],
                    ),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF3B82F6).withOpacity(0.3),
                        blurRadius: 15,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              userProfile.name,
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1F2937),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          if (userProfile.isVerified)
                            Container(
                              margin: const EdgeInsets.only(left: 8),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.green.withOpacity(0.3),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.verified,
                                    size: 12,
                                    color: Colors.green,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    AppLocalizations.of(context)!.profile_verified,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        AppLocalizations.of(context)!.profile_member_since(_formatDate(userProfile.joinDate)),
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        userProfile.location,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            _buildInfoRow(Icons.email_outlined, AppLocalizations.of(context)!.profile_email, userProfile.email),
            const SizedBox(height: 12),
            _buildInfoRow(Icons.phone_outlined, AppLocalizations.of(context)!.profile_phone, userProfile.phoneNumber),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => _showEditProfileModal(userProfile),
                icon: const Icon(Icons.edit, size: 18),
                label: Text(AppLocalizations.of(context)!.profile_edit_profile),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3B82F6),
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: const Color(0xFF3B82F6).withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            size: 18,
            color: const Color(0xFF3B82F6),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF1F2937),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStatisticsSection(AsyncSnapshot<UserStatistics> statsSnapshot) {
    if (statsSnapshot.connectionState == ConnectionState.waiting) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0),
          child: Center(child: CircularProgressIndicator()),
        );
    }
    if (statsSnapshot.hasError) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(child: Text(AppLocalizations.of(context)!.profile_could_not_load_stats(statsSnapshot.error.toString()))),
        );
    }
     if (!statsSnapshot.hasData) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(child: Text(AppLocalizations.of(context)!.profile_no_stats_available)),
        );
    }

    final userStats = statsSnapshot.data!;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              AppLocalizations.of(context)!.profile_statistics_title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1F2937),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              _buildStatCard(
                AppLocalizations.of(context)!.profile_reports_submitted,
                '${userStats.totalReports}',
                Icons.assignment_outlined,
                const Color(0xFF3B82F6),
              ),
              const SizedBox(width: 12),
              _buildStatCard(
                AppLocalizations.of(context)!.profile_verified_reports,
                '${userStats.verifiedReports}',
                Icons.verified_outlined,
                Colors.green,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _buildStatCard(
                AppLocalizations.of(context)!.profile_pending_reports,
                '${userStats.pendingReports}',
                Icons.pending_outlined,
                Colors.orange,
              ),
              const SizedBox(width: 12),
              _buildStatCard(
                AppLocalizations.of(context)!.profile_rejected_reports,
                '${userStats.rejectedReports}',
                Icons.cancel_outlined,
                Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color.withOpacity(0.2)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 24,
              color: color,
            ),
            const SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAccountOptionsSection(UserProfile userProfile) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              AppLocalizations.of(context)!.profile_account_options,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1F2937),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                _buildOptionTile(
                  Icons.language_outlined,
                  AppLocalizations.of(context)!.profile_language_settings,
                  AppLocalizations.of(context)!.profile_language_settings_desc,
                  () => _showLanguageSelection(userProfile),
                ),
                _buildDivider(),
                _buildOptionTile(
                  Icons.notifications_outlined,
                  AppLocalizations.of(context)!.profile_notification_settings,
                  AppLocalizations.of(context)!.profile_notification_settings_desc,
                  _showNotificationSettings,
                ),
                _buildDivider(),
                _buildOptionTile(
                  Icons.privacy_tip_outlined,
                  AppLocalizations.of(context)!.profile_privacy_permissions,
                  AppLocalizations.of(context)!.profile_privacy_permissions_desc,
                  _showPrivacySettings,
                ),
                _buildDivider(),
                _buildOptionTile(
                  Icons.help_outline,
                  AppLocalizations.of(context)!.profile_help_support,
                  AppLocalizations.of(context)!.profile_help_support_desc,
                  () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(AppLocalizations.of(context)!.profile_help_coming_soon),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                ),
                _buildDivider(),
                _buildOptionTile(
                  Icons.info_outline,
                  AppLocalizations.of(context)!.profile_about_sentinel,
                  AppLocalizations.of(context)!.profile_about_sentinel_desc,
                  () {
                    showAboutDialog(
                      context: context,
                      applicationName: AppLocalizations.of(context)!.profile_app_name,
                      applicationVersion: AppLocalizations.of(context)!.profile_app_version,
                      applicationIcon: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF3B82F6), Color(0xFF06B6D4)],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.security_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      children: [
                        Text(
                          AppLocalizations.of(context)!.profile_app_description,
                        ),
                      ],
                    );
                  },
                ),
                _buildDivider(),
                _buildOptionTile(
                  Icons.logout,
                  AppLocalizations.of(context)!.profile_logout,
                  AppLocalizations.of(context)!.profile_logout_desc,
                  _handleLogout,
                  isDestructive: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionTile(
    IconData icon,
    String title,
    String subtitle,
    VoidCallback onTap, {
    bool isDestructive = false,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          HapticFeedback.lightImpact();
          onTap();
        },
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: isDestructive
                      ? Colors.red.withOpacity(0.1)
                      : const Color(0xFF3B82F6).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  icon,
                  size: 20,
                  color: isDestructive ? Colors.red : const Color(0xFF3B82F6),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: isDestructive ? Colors.red : const Color(0xFF1F2937),
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey[400],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      height: 1,
      thickness: 1,
      color: Colors.grey[200],
      indent: 72,
    );
  }

  String _formatDate(DateTime date) {
    final months = AppLocalizations.of(context)!.profile_months.split(',');
    return '${months[date.month - 1]} ${date.year}';
  }
}

// Edit Profile Modal
class EditProfileModal extends StatefulWidget {
  final UserProfile userProfile;
  final Function(UserProfile) onSave;

  const EditProfileModal({
    super.key,
    required this.userProfile,
    required this.onSave,
  });

  @override
  State<EditProfileModal> createState() => _EditProfileModalState();
}

class _EditProfileModalState extends State<EditProfileModal> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.userProfile.name);
    _emailController = TextEditingController(text: widget.userProfile.email);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _saveProfile() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isSaving = true;
    });

    // Simulate API call
    await Future.delayed(const Duration(seconds: 1));

    final updatedProfile = UserProfile(
      name: _nameController.text.trim(),
      email: _emailController.text.trim(),
      phoneNumber: widget.userProfile.phoneNumber,
      isVerified: widget.userProfile.isVerified,
      profileImageUrl: widget.userProfile.profileImageUrl,
      joinDate: widget.userProfile.joinDate,
      location: widget.userProfile.location,
      language: widget.userProfile.language,
    );

    widget.onSave(updatedProfile);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          // Handle bar
          Container(
            margin: const EdgeInsets.only(top: 12),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          
          // Header
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.profile_edit_profile_title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1F2937),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close),
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.grey[100],
                  ),
                ),
              ],
            ),
          ),

          // Form
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Name Field
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: AppLocalizations.of(context)!.profile_full_name_label,
                        prefixIcon: const Icon(Icons.person_outline),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return AppLocalizations.of(context)!.profile_full_name_error;
                        }
                        return null;
                      },
                    ),
                    
                    const SizedBox(height: 20),
                    
                    // Email Field
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: AppLocalizations.of(context)!.profile_email_label,
                        prefixIcon: const Icon(Icons.email_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return AppLocalizations.of(context)!.profile_email_error_empty;
                        }
                        if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                          return AppLocalizations.of(context)!.profile_email_error_invalid;
                        }
                        return null;
                      },
                    ),
                    
                    const SizedBox(height: 20),
                    
                    // Phone Field (Read-only)
                    TextFormField(
                      initialValue: widget.userProfile.phoneNumber,
                      enabled: false,
                      decoration: InputDecoration(
                        labelText: AppLocalizations.of(context)!.profile_phone_label,
                        prefixIcon: const Icon(Icons.phone_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        suffixIcon: const Icon(Icons.lock_outline, size: 16),
                      ),
                    ),
                    
                    const Spacer(),
                    
                    // Save Button
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: _isSaving ? null : _saveProfile,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF3B82F6),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: _isSaving
                            ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                ),
                              )
                            : Text(
                                AppLocalizations.of(context)!.profile_save_changes,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                      ),
                    ),
                    
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Notification Settings Modal
class NotificationSettingsModal extends StatefulWidget {
  const NotificationSettingsModal({super.key});

  @override
  State<NotificationSettingsModal> createState() => _NotificationSettingsModalState();
}

class _NotificationSettingsModalState extends State<NotificationSettingsModal> {
  bool _pushNotifications = true;
  bool _emailNotifications = true;
  bool _criticalAlerts = true;
  bool _reportUpdates = true;
  bool _newsUpdates = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          // Handle bar
          Container(
            margin: const EdgeInsets.only(top: 12),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          
          // Header
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                const Icon(Icons.notifications_outlined, 
                           color: Color(0xFF3B82F6), size: 24),
                const SizedBox(width: 12),
                Text(
                  AppLocalizations.of(context)!.profile_notification_title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1F2937),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close),
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.grey[100],
                  ),
                ),
              ],
            ),
          ),

          // Settings List
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.profile_general_notifications,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F2937),
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  _buildNotificationTile(
                    AppLocalizations.of(context)!.profile_push_notifications,
                    AppLocalizations.of(context)!.profile_push_notifications_desc,
                    _pushNotifications,
                    (value) => setState(() => _pushNotifications = value),
                  ),
                  
                  _buildNotificationTile(
                    AppLocalizations.of(context)!.profile_email_notifications,
                    AppLocalizations.of(context)!.profile_email_notifications_desc,
                    _emailNotifications,
                    (value) => setState(() => _emailNotifications = value),
                  ),
                  
                  const SizedBox(height: 24),
                  Text(
                    AppLocalizations.of(context)!.profile_alert_types,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F2937),
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  _buildNotificationTile(
                    AppLocalizations.of(context)!.profile_critical_safety_alerts,
                    AppLocalizations.of(context)!.profile_critical_safety_alerts_desc,
                    _criticalAlerts,
                    (value) => setState(() => _criticalAlerts = value),
                    isImportant: true,
                  ),
                  
                  _buildNotificationTile(
                    AppLocalizations.of(context)!.profile_report_status_updates,
                    AppLocalizations.of(context)!.profile_report_status_updates_desc,
                    _reportUpdates,
                    (value) => setState(() => _reportUpdates = value),
                  ),
                  
                  _buildNotificationTile(
                    AppLocalizations.of(context)!.profile_news_updates,
                    AppLocalizations.of(context)!.profile_news_updates_desc,
                    _newsUpdates,
                    (value) => setState(() => _newsUpdates = value),
                  ),
                  
                  // _buildNotificationTile(
                  //   'Marketing Emails',
                  //   'Promotional content and features',
                  //   _marketingEmails,
                  //   (value) => setState(() => _marketingEmails = value),
                  // ),
                  
                  const SizedBox(height: 24),
                  
                  // Info Box
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.blue[200]!),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.info_outline, color: Colors.blue[700], size: 20),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            AppLocalizations.of(context)!.profile_critical_alerts_info,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationTile(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged, {
    bool isImportant = false,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isImportant ? Colors.red[50] : Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isImportant ? Colors.red[200]! : Colors.grey[200]!,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: isImportant ? Colors.red[800] : const Color(0xFF1F2937),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: isImportant ? Colors.red[600] : Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          Switch(
            value: value,
            onChanged: isImportant ? null : onChanged, // Disable critical alerts toggle
            activeColor: const Color(0xFF3B82F6),
          ),
        ],
      ),
    );
  }
}

// Privacy Settings Modal
class PrivacySettingsModal extends StatefulWidget {
  const PrivacySettingsModal({super.key});

  @override
  State<PrivacySettingsModal> createState() => _PrivacySettingsModalState();
}

class _PrivacySettingsModalState extends State<PrivacySettingsModal> {
  bool _locationSharing = true;
  bool _publicProfile = false;
  bool _dataAnalytics = true;
  bool _crashReporting = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          // Handle bar
          Container(
            margin: const EdgeInsets.only(top: 12),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          
          // Header
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                const Icon(Icons.privacy_tip_outlined, 
                           color: Color(0xFF3B82F6), size: 24),
                const SizedBox(width: 12),
                Text(
                  AppLocalizations.of(context)!.profile_privacy_title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1F2937),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close),
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.grey[100],
                  ),
                ),
              ],
            ),
          ),

          // Settings List
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.profile_location_data,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F2937),
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  _buildPrivacyTile(
                    AppLocalizations.of(context)!.profile_location_sharing,
                    AppLocalizations.of(context)!.profile_location_sharing_desc,
                    _locationSharing,
                    (value) => setState(() => _locationSharing = value),
                    icon: Icons.location_on,
                  ),
                  
                  _buildPrivacyTile(
                    AppLocalizations.of(context)!.profile_public_profile,
                    AppLocalizations.of(context)!.profile_public_profile_desc,
                    _publicProfile,
                    (value) => setState(() => _publicProfile = value),
                    icon: Icons.public,
                  ),
                  
                  const SizedBox(height: 24),
                  Text(
                    AppLocalizations.of(context)!.profile_app_analytics,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F2937),
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  _buildPrivacyTile(
                    AppLocalizations.of(context)!.profile_usage_analytics,
                    AppLocalizations.of(context)!.profile_usage_analytics_desc,
                    _dataAnalytics,
                    (value) => setState(() => _dataAnalytics = value),
                    icon: Icons.analytics,
                  ),
                  
                  _buildPrivacyTile(
                    AppLocalizations.of(context)!.profile_crash_reporting,
                    AppLocalizations.of(context)!.profile_crash_reporting_desc,
                    _crashReporting,
                    (value) => setState(() => _crashReporting = value),
                    icon: Icons.bug_report,
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Action Buttons
                  _buildActionButton(
                    AppLocalizations.of(context)!.profile_view_privacy_policy,
                    Icons.description_outlined,
                    () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(AppLocalizations.of(context)!.profile_opening_privacy_policy),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                  ),
                  
                  const SizedBox(height: 12),
                  
                  _buildActionButton(
                    AppLocalizations.of(context)!.profile_export_my_data,
                    Icons.download_outlined,
                    () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(AppLocalizations.of(context)!.profile_data_export_submitted),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                  ),
                  
                  const SizedBox(height: 12),
                  
                  _buildActionButton(
                    AppLocalizations.of(context)!.profile_delete_my_account,
                    Icons.delete_forever_outlined,
                    () {
                      _showDeleteAccountDialog();
                    },
                    isDestructive: true,
                  ),
                  
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPrivacyTile(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged, {
    required IconData icon,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFF3B82F6).withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              size: 20,
              color: const Color(0xFF3B82F6),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1F2937),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: const Color.fromARGB(255, 7, 7, 7),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(
    String title,
    IconData icon,
    VoidCallback onTap, {
    bool isDestructive = false,
  }) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: onTap,
        icon: Icon(icon, size: 18),
        label: Text(title),
        style: OutlinedButton.styleFrom(
          foregroundColor: isDestructive ? Colors.red : const Color(0xFF3B82F6),
          side: BorderSide(
            color: isDestructive ? Colors.red : const Color(0xFF3B82F6),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
      ),
    );
  }

  void _showDeleteAccountDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Row(
          children: [
            Icon(Icons.warning_amber_rounded, color: Colors.red, size: 24),
            SizedBox(width: 8),
            Text(AppLocalizations.of(context)!.profile_delete_account_title),
          ],
        ),
        content: Text(
          AppLocalizations.of(context)!.profile_delete_account_confirm,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(AppLocalizations.of(context)!.profile_cancel),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(AppLocalizations.of(context)!.profile_delete_account_submitted),
                  backgroundColor: Colors.red,
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: Text(AppLocalizations.of(context)!.profile_delete_account_title),
          ),
        ],
      ),
    );
  }
}

// Data Models
class UserProfile {
  final String name;
  final String email;
  final String phoneNumber;
  final bool isVerified;
  final String? profileImageUrl;
  final DateTime joinDate;
  final String location;
  final String language;

  UserProfile({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.isVerified,
    this.profileImageUrl,
    required this.joinDate,
    required this.location,
    required this.language,
  });

  factory UserProfile.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data();
    if (data == null) {
      throw Exception("User document data is null!");
    }
    return UserProfile(
      name: data['name'] ?? 'No Name Provided',
      email: data['email'] ?? 'No Email Provided',
      phoneNumber: data['mobile_number'] ?? 'No Phone Provided',
      isVerified: data['id_verified'] ?? false,
      // Convert Firestore Timestamp to DateTime
      joinDate: (data['createdAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
      // Location is not in the user document, so we use a placeholder.
      // You might want to add this field to your user document in Firestore.
      location: 'Pune, Maharashtra, India',
      language: data['language'] ?? 'en',
      profileImageUrl: data['profileImageUrl'], // If you add this field
    );
  }
}

class UserStatistics {
  final int totalReports;
  final int verifiedReports;
  final int pendingReports;
  final int rejectedReports;

  UserStatistics({
    required this.totalReports,
    required this.verifiedReports,
    required this.pendingReports,
    required this.rejectedReports,
  });
}