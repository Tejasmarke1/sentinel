// language_selection_page.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../locale_controller.dart';

class LanguageSelectionPage extends StatefulWidget {
  final String? currentLanguage;
  final Function(String)? onLanguageSelected;

  const LanguageSelectionPage({
    super.key,
    this.currentLanguage,
    this.onLanguageSelected,
  });

  @override
  State<LanguageSelectionPage> createState() => _LanguageSelectionPageState();
}

class _LanguageSelectionPageState extends State<LanguageSelectionPage> 
    with TickerProviderStateMixin {
  
  String _selectedLanguage = 'en';
  bool _isLoading = false;
  bool _isUpdating = false;
  String? _errorMessage;
  
  late AnimationController _fadeController;
  late AnimationController _listController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _listAnimation;

  // Firebase instances
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Language data with native names and regions
  final List<LanguageOption> _languages = [
    LanguageOption(
      code: 'en',
      name: 'English',
      nativeName: 'English',
      region: 'International',
      icon: '🇬🇧',
      isDefault: true,
    ),
    LanguageOption(
      code: 'hi',
      name: 'Hindi',
      nativeName: 'हिन्दी',
      region: 'National Language',
      icon: '🇮🇳',
    ),
    
    // West Coast Languages
    LanguageOption(
      code: 'mr',
      name: 'Marathi',
      nativeName: 'मराठी',
      region: 'Maharashtra',
      icon: '🌊',
      category: 'West Coast',
    ),
    LanguageOption(
      code: 'gu',
      name: 'Gujarati',
      nativeName: 'ગુજરાતી',
      region: 'Gujarat',
      icon: '🌊',
      category: 'West Coast',
    ),
    LanguageOption(
      code: 'kn',
      name: 'Kannada',
      nativeName: 'ಕನ್ನಡ',
      region: 'Karnataka',
      icon: '🌊',
      category: 'West Coast',
    ),
    LanguageOption(
      code: 'ml',
      name: 'Malayalam',
      nativeName: 'മലയാളം',
      region: 'Kerala',
      icon: '🌊',
      category: 'West Coast',
    ),
    
    // East Coast Languages
    LanguageOption(
      code: 'te',
      name: 'Telugu',
      nativeName: 'తెలుగు',
      region: 'Andhra Pradesh, Telangana',
      icon: '🏖️',
      category: 'East Coast',
    ),
    LanguageOption(
      code: 'ta',
      name: 'Tamil',
      nativeName: 'தமிழ்',
      region: 'Tamil Nadu',
      icon: '🏖️',
      category: 'East Coast',
    ),
    LanguageOption(
      code: 'or',
      name: 'Odia',
      nativeName: 'ଓଡ଼ିଆ',
      region: 'Odisha',
      icon: '🏖️',
      category: 'East Coast',
    ),
    LanguageOption(
      code: 'bn',
      name: 'Bengali',
      nativeName: 'বাংলা',
      region: 'West Bengal',
      icon: '🏖️',
      category: 'East Coast',
    ),
    
    // Island Territories
    LanguageOption(
      code: 'as',
      name: 'Assamese',
      nativeName: 'অসমীয়া',
      region: 'Northeastern Coastal Areas',
      icon: '🏝️',
      category: 'Island Territories',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _initializeLanguage();
    _initializeAnimations();
  }

  void _initializeLanguage() async {
    setState(() {
      _isLoading = true;
    });

    try {
      // First try to get language from widget parameter
      if (widget.currentLanguage != null) {
        _selectedLanguage = widget.currentLanguage!;
      } else {
        // Try to get language from Firebase user profile
        await _loadUserLanguagePreference();
      }
    } catch (e) {
      debugPrint('Error initializing language: $e');
      // Fallback to default
      _selectedLanguage = 'en';
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _loadUserLanguagePreference() async {
    final user = _auth.currentUser;
    if (user != null) {
      try {
        final userDoc = await _firestore.collection('users').doc(user.uid).get();
        if (userDoc.exists && userDoc.data() != null) {
          final userData = userDoc.data()!;
          final language = userData['language'] as String?;
          if (language != null && _languages.any((lang) => lang.code == language)) {
            _selectedLanguage = language;
          }
        }
      } catch (e) {
        debugPrint('Error loading user language preference: $e');
      }
    }
  }

  void _initializeAnimations() {
    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _listController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _fadeController, curve: Curves.easeInOut),
    );
    
    _listAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _listController, curve: Curves.easeOutCubic),
    );

    _fadeController.forward();
    Future.delayed(const Duration(milliseconds: 200), () {
      _listController.forward();
    });
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _listController.dispose();
    super.dispose();
  }

  void _selectLanguage(String languageCode) {
    if (_isUpdating) return; // Prevent selection during update
    
    setState(() {
      _selectedLanguage = languageCode;
      _errorMessage = null; // Clear any previous errors
    });
    HapticFeedback.lightImpact();
  }

  Future<void> _updateUserLanguageInFirebase(String languageCode) async {
    final user = _auth.currentUser;
    if (user == null) return;

    try {
      await _firestore.collection('users').doc(user.uid).update({
        'language': languageCode,
        'updatedAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      debugPrint('Error updating language in Firebase: $e');
      throw Exception('Failed to save language preference: ${e.toString()}');
    }
  }

  Future<void> _confirmSelection() async {
    if (_isUpdating) return;

    setState(() {
      _isUpdating = true;
      _errorMessage = null;
    });

    HapticFeedback.mediumImpact();
    
    try {
      final selected = _selectedLanguage;
      
      // Update locale controller
      LocaleController.instance.setLocale(Locale(selected));
      
      // Call the callback if provided
      if (widget.onLanguageSelected != null) {
        widget.onLanguageSelected!(selected);
      }

      // Update Firebase if user is logged in
      final user = _auth.currentUser;
      if (user != null) {
        await _updateUserLanguageInFirebase(selected);
        
        // Navigate to profile page
        if (mounted) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            '/home',
            (route) => false,
            arguments: {
              'languageCode': selected,
            },
          );
        }
      } else {
        // Not logged in, go to login page
        if (mounted) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            '/login',
            (route) => false,
            arguments: {
              'languageCode': selected,
            },
          );
        }
      }
    } catch (e) {
      setState(() {
        _errorMessage = e.toString().replaceFirst('Exception: ', '');
      });
      
      // Show error snackbar
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(_errorMessage!),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
            action: SnackBarAction(
              label: 'Retry',
              textColor: Colors.white,
              onPressed: _confirmSelection,
            ),
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isUpdating = false;
        });
      }
    }
  }

  String _getLanguageName(String code) {
    try {
      return _languages.firstWhere((lang) => lang.code == code).name;
    } catch (e) {
      return code.toUpperCase();
    }
  }

  Map<String, List<LanguageOption>> _groupLanguagesByCategory() {
    final Map<String, List<LanguageOption>> grouped = {
      'Primary': [],
      'West Coast': [],
      'East Coast': [],
      'Island Territories': [],
    };

    for (final language in _languages) {
      if (language.isDefault || language.code == 'hi') {
        grouped['Primary']!.add(language);
      } else if (language.category != null) {
        grouped[language.category!]!.add(language);
      }
    }

    return grouped;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: _isLoading 
          ? _buildLoadingScreen()
          : FadeTransition(
              opacity: _fadeAnimation,
              child: SafeArea(
                child: Column(
                  children: [
                    _buildHeader(),
                    if (_errorMessage != null) _buildErrorBanner(),
                    Expanded(
                      child: _buildLanguageList(),
                    ),
                    _buildConfirmButton(),
                  ],
                ),
              ),
            ),
    );
  }

  Widget _buildLoadingScreen() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF3B82F6)),
          ),
          SizedBox(height: 16),
          Text(
            'Loading language preferences...',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorBanner() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.red.withOpacity(0.3)),
      ),
      child: Row(
        children: [
          const Icon(Icons.error_outline, color: Colors.red, size: 20),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              _errorMessage!,
              style: const TextStyle(color: Colors.red, fontSize: 14),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _errorMessage = null;
              });
            },
            child: const Text('Dismiss', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    final user = _auth.currentUser;
    
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
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.arrow_back, color: Colors.white, size: 20),
                  padding: EdgeInsets.zero,
                ),
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Text(
                  'Select Language',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.language,
                  color: Colors.white,
                  size: 28,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const SizedBox(width: 56), // Align with title
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Choose your preferred language for Sentinel',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                    if (user != null) ...[
                      const SizedBox(height: 4),
                      Text(
                        'Signed in as ${user.email}',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageList() {
    final groupedLanguages = _groupLanguagesByCategory();
    
    return AnimatedBuilder(
      animation: _listAnimation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, 20 * (1 - _listAnimation.value)),
          child: Opacity(
            opacity: _listAnimation.value,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Primary Languages (English & Hindi)
                  _buildLanguageSection('Primary Languages', groupedLanguages['Primary']!),
                  
                  const SizedBox(height: 24),
                  
                  // West Coast Languages
                  _buildLanguageSection('West Coast Languages', groupedLanguages['West Coast']!),
                  
                  const SizedBox(height: 24),
                  
                  // East Coast Languages
                  _buildLanguageSection('East Coast Languages', groupedLanguages['East Coast']!),
                  
                  const SizedBox(height: 24),
                  
                  // Island Territories
                  _buildLanguageSection('Island Territories', groupedLanguages['Island Territories']!),
                  
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildLanguageSection(String title, List<LanguageOption> languages) {
    if (languages.isEmpty) return const SizedBox.shrink();
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F2937),
            ),
          ),
        ),
        const SizedBox(height: 12),
        ...languages.map((language) => _buildLanguageCard(language)),
      ],
    );
  }

  Widget _buildLanguageCard(LanguageOption language) {
    final isSelected = _selectedLanguage == language.code;
    
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isSelected ? const Color(0xFF3B82F6) : Colors.grey[300]!,
          width: isSelected ? 2 : 1,
        ),
        boxShadow: [
          BoxShadow(
            color: isSelected 
                ? const Color(0xFF3B82F6).withOpacity(0.1)
                : Colors.black.withOpacity(0.05),
            blurRadius: isSelected ? 12 : 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: _isUpdating ? null : () => _selectLanguage(language.code),
          borderRadius: BorderRadius.circular(16),
          child: Opacity(
            opacity: _isUpdating ? 0.6 : 1.0,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  // Language Icon/Flag
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: isSelected 
                          ? const Color(0xFF3B82F6).withOpacity(0.1)
                          : Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: isSelected ? const Color(0xFF3B82F6) : Colors.transparent,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        language.icon,
                        style: const TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                  
                  const SizedBox(width: 16),
                  
                  // Language Details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              language.name,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: isSelected ? const Color(0xFF3B82F6) : const Color(0xFF1F2937),
                              ),
                            ),
                            if (language.isDefault) ...[
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(color: Colors.green.withOpacity(0.3)),
                                ),
                                child: const Text(
                                  'DEFAULT',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          language.nativeName,
                          style: TextStyle(
                            fontSize: 16,
                            color: isSelected ? const Color(0xFF3B82F6) : Colors.grey[700],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          language.region,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // Selection Indicator
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isSelected ? const Color(0xFF3B82F6) : Colors.transparent,
                      border: Border.all(
                        color: isSelected ? const Color(0xFF3B82F6) : Colors.grey[400]!,
                        width: 2,
                      ),
                    ),
                    child: isSelected
                        ? const Icon(
                            Icons.check,
                            size: 16,
                            color: Colors.white,
                          )
                        : null,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildConfirmButton() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Selected Language Preview
          if (_selectedLanguage != 'en') ...[
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF3B82F6).withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFF3B82F6).withOpacity(0.3)),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: const Color(0xFF3B82F6),
                    size: 20,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Selected: ${_getLanguageName(_selectedLanguage)}',
                      style: const TextStyle(
                        color: Color(0xFF3B82F6),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    _languages.firstWhere((lang) => lang.code == _selectedLanguage).icon,
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
          
          // Confirm Button
          SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              onPressed: _isUpdating ? null : _confirmSelection,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3B82F6),
                foregroundColor: Colors.white,
                elevation: 0,
                disabledBackgroundColor: Colors.grey[300],
                disabledForegroundColor: Colors.grey[600],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                shadowColor: const Color(0xFF3B82F6).withOpacity(0.3),
              ),
              child: _isUpdating
                  ? const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        ),
                        SizedBox(width: 12),
                        Text(
                          'Updating Language...',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  : const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.check_circle, size: 20),
                        SizedBox(width: 8),
                        Text(
                          'Confirm Language',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

// Language Option Model
class LanguageOption {
  final String code;
  final String name;
  final String nativeName;
  final String region;
  final String icon;
  final bool isDefault;
  final String? category;

  LanguageOption({
    required this.code,
    required this.name,
    required this.nativeName,
    required this.region,
    required this.icon,
    this.isDefault = false,
    this.category,
  });
}

// Firebase User Service for language management
class UserLanguageService {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<String?> getUserLanguage() async {
    final user = _auth.currentUser;
    if (user == null) return null;

    try {
      final userDoc = await _firestore.collection('users').doc(user.uid).get();
      if (userDoc.exists && userDoc.data() != null) {
        return userDoc.data()!['language'] as String?;
      }
    } catch (e) {
      debugPrint('Error getting user language: $e');
    }
    return null;
  }

  static Future<void> updateUserLanguage(String languageCode) async {
    final user = _auth.currentUser;
    if (user == null) throw Exception('User not authenticated');

    try {
      await _firestore.collection('users').doc(user.uid).update({
        'language': languageCode,
        'updatedAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      debugPrint('Error updating user language: $e');
      throw Exception('Failed to update language preference');
    }
  }

  static Future<Map<String, dynamic>?> getUserProfile() async {
    final user = _auth.currentUser;
    if (user == null) return null;

    try {
      final userDoc = await _firestore.collection('users').doc(user.uid).get();
      if (userDoc.exists) {
        return userDoc.data();
      }
    } catch (e) {
      debugPrint('Error getting user profile: $e');
    }
    return null;
  }
}

// Usage Example Widget (for demonstration)
class LanguageSettingsDemo extends StatefulWidget {
  const LanguageSettingsDemo({super.key});

  @override
  State<LanguageSettingsDemo> createState() => _LanguageSettingsDemoState();
}

class _LanguageSettingsDemoState extends State<LanguageSettingsDemo> {
  String _currentLanguage = 'en';
  bool _isLoading = false;
  String? _userEmail;

  @override
  void initState() {
    super.initState();
    _loadCurrentLanguage();
    _checkUserStatus();
  }

  void _loadCurrentLanguage() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final language = await UserLanguageService.getUserLanguage();
      if (language != null && mounted) {
        setState(() {
          _currentLanguage = language;
        });
      }
    } catch (e) {
      debugPrint('Error loading current language: $e');
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  void _checkUserStatus() {
    final user = FirebaseAuth.instance.currentUser;
    setState(() {
      _userEmail = user?.email;
    });
  }

  void _openLanguageSelection() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LanguageSelectionPage(
          currentLanguage: _currentLanguage,
          onLanguageSelected: (languageCode) {
            if (mounted) {
              setState(() {
                _currentLanguage = languageCode;
              });
            }
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language Settings Demo'),
        backgroundColor: const Color(0xFF3B82F6),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_isLoading)
                const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF3B82F6)),
                )
              else ...[
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blue.withOpacity(0.3)),
                  ),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.language,
                        size: 48,
                        color: Color(0xFF3B82F6),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Current Language: $_currentLanguage',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (_userEmail != null) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Signed in as: $_userEmail',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: _openLanguageSelection,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3B82F6),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 2,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.edit, size: 20),
                        SizedBox(width: 8),
                        Text(
                          'Change Language',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              const SizedBox(height: 24),
              Text(
                'Language preference will be saved to your profile and synced across devices.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}