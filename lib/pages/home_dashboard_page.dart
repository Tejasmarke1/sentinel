// home_dashboard_page.dart
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:coastsentinel/l10n/app_localizations.dart';
import 'package:coastsentinel/utils/app_colors.dart';
import 'dart:ui'; // For BackdropFilter
import '../utils/glassmorphism.dart';
import '../utils/animations.dart';

class HomeDashboardPage extends StatefulWidget {
  const HomeDashboardPage({super.key});

  @override
  State<HomeDashboardPage> createState() => _HomeDashboardPageState();
}

class _HomeDashboardPageState extends State<HomeDashboardPage> 
    with AutomaticKeepAliveClientMixin {
  
  @override
  bool get wantKeepAlive => true;

  final Set<Marker> _markers = {};

  final List<HazardAlert> _mockAlerts = [
    HazardAlert(
      id: '1',
      title: 'Severe Weather Alert',
      description: 'Dangerous weather conditions reported in Goa',
      severity: AlertSeverity.high,
      location: 'Goa, India',
      timestamp: DateTime.now().subtract(const Duration(hours: 2)),
      isVerified: true,
      reportedBy: 'Emergency Services',
    ),
    HazardAlert(
      id: '2',
      title: 'Environmental Hazard Warning',
      description: 'Unusual hazard patterns detected in Mumbai',
      severity: AlertSeverity.medium,
      location: 'Mumbai, Maharashtra',
      timestamp: DateTime.now().subtract(const Duration(hours: 5)),
      isVerified: false,
      reportedBy: 'Local Resident',
    ),
    HazardAlert(
      id: '3',
      title: 'Weather Advisory',
      description: 'Storm approaching Kerala, avoid outdoor activities',
      severity: AlertSeverity.critical,
      location: 'Kerala, India',
      timestamp: DateTime.now().subtract(const Duration(hours: 1)),
      isVerified: true,
      reportedBy: 'Meteorological Dept',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _buildMockMarkers();
  }

  void _buildMockMarkers() {
    for (final alert in _mockAlerts) {
      final LatLng? latLng = _resolveLatLng(alert.location);
      if (latLng == null) continue;

      _markers.add(
        Marker(
          markerId: MarkerId(alert.id),
          position: latLng,
          infoWindow: InfoWindow(
            title: alert.title,
            snippet: alert.description,
          ),
          icon: BitmapDescriptor.defaultMarkerWithHue(_severityToHue(alert.severity)),
        ),
      );
    }
    if (mounted) setState(() {});
  }

  // Very simple resolver for demo locations used in the mock alerts
  LatLng? _resolveLatLng(String location) {
    final lower = location.toLowerCase();
    if (lower.contains('goa')) return const LatLng(15.2993, 74.1240);
    if (lower.contains('mumbai')) return const LatLng(19.0760, 72.8777);
    if (lower.contains('kerala')) return const LatLng(9.9312, 76.2673); // Kochi
    return null;
  }

  double _severityToHue(AlertSeverity severity) {
    switch (severity) {
      case AlertSeverity.low:
        return 120.0; // green
      case AlertSeverity.medium:
        return 30.0; // orange
      case AlertSeverity.high:
        return 0.0; // red
      case AlertSeverity.critical:
        return 330.0; // deep red/purple
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // Required for AutomaticKeepAliveClientMixin
    
    return SafeArea(
      child: Column(
        children: [
          // Header
          _buildHeader(),
          
          // Map and Alerts Content
          Expanded(
            child: Column(
              children: [
                // Map Section
                Expanded(
                  flex: 3,
                  child: _buildMapSection(),
                ),
                
                // Quick Stats
                _buildStatsSection(),
                
                const SizedBox(height: 16),
                
                // Recent Alerts Feed
                Expanded(
                  flex: 2,
                  child: _buildAlertsSection(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    final t = AppLocalizations.of(context)!;
    return SlideInAnimation(
      delay: const Duration(milliseconds: 100),
      begin: const Offset(0, -0.3),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.infoBlueDark, AppColors.infoBlueLight],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.withOpacity(AppColors.infoBlueLight, 0.3),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            FadeInAnimation(
              delay: const Duration(milliseconds: 200),
              child: Row(
                children: [
                  Text(
                    t.login_title_caps,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textOnDark,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const Spacer(),
                  PulseAnimation(
                    duration: const Duration(milliseconds: 2000),
                    minScale: 0.95,
                    maxScale: 1.05,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: AppColors.withOpacity(AppColors.textOnDark, 0.15),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.3),
                              width: 1.5,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              PulseAnimation(
                                minScale: 0.8,
                                maxScale: 1.2,
                                duration: const Duration(milliseconds: 1500),
                                child: Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: AppColors.safeGreen,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.safeGreen.withOpacity(0.5),
                                        blurRadius: 4,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 6),
                              Text(
                                t.dashboard_live,
                                style: const TextStyle(
                                  color: AppColors.textOnDark,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            FadeInAnimation(
              delay: const Duration(milliseconds: 300),
              child: Row(
                children: [
                  Text(
                    t.dashboard_title,
                    style: const TextStyle(
                      color: AppColors.textOnDark,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMapSection() {
    return ScaleInAnimation(
      delay: const Duration(milliseconds: 400),
      curve: Curves.easeOutBack,
      child: Container(
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadowLight,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: _buildMapWidget(),
        ),
      ),
    );
  }

  Widget _buildMapWidget() {
  return GoogleMap(
    initialCameraPosition: const CameraPosition(
      target: LatLng(15.2993, 74.1240), // Example: Goa
      zoom: 6,
    ),
    myLocationEnabled: true,
    myLocationButtonEnabled: true,
    zoomControlsEnabled: false,
    markers: _markers,
    onMapCreated: (GoogleMapController controller) {},
  );
}

  // Removed unused mock marker widget

  Widget _buildStatsSection() {
    final t = AppLocalizations.of(context)!;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _buildStatCard(t.dashboard_stat_active_alerts, '${_mockAlerts.length}', Colors.red, 0),
          const SizedBox(width: 12),
          _buildStatCard(t.dashboard_stat_verified, '2', Colors.green, 100),
          const SizedBox(width: 12),
          _buildStatCard(t.dashboard_stat_this_week, '12', Colors.blue, 200),
        ],
      ),
    );
  }

  Widget _buildStatCard(String title, String value, Color color, int delayMs) {
    return Expanded(
      child: ScaleInAnimation(
        delay: Duration(milliseconds: 500 + delayMs),
        curve: Curves.easeOutBack,
        child: GlassCard(
          padding: const EdgeInsets.all(16),
          hasGradient: true,
          gradientColors: [
            color.withOpacity(0.15),
            color.withOpacity(0.05),
          ],
          child: Column(
            children: [
              BounceAnimation(
                begin: 0.5,
                end: 1.0,
                duration: const Duration(milliseconds: 800),
                child: Text(
                  value,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              FadeInAnimation(
                delay: Duration(milliseconds: 600 + delayMs),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAlertsSection() {
    final t = AppLocalizations.of(context)!;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInAnimation(
            delay: const Duration(milliseconds: 700),
            child: Text(
              t.dashboard_recent_reports,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1F2937),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.builder(
              itemCount: _mockAlerts.length,
              itemBuilder: (context, index) {
                return SlideInAnimation(
                  delay: Duration(milliseconds: 800 + (index * 100)),
                  begin: const Offset(0.3, 0),
                  curve: Curves.easeOutCubic,
                  child: _buildAlertCard(_mockAlerts[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAlertCard(HazardAlert alert) {
    return GlassCard(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      hasGradient: true,
      gradientColors: [
        _getSeverityColor(alert.severity).withOpacity(0.1),
        _getSeverityColor(alert.severity).withOpacity(0.05),
      ],
      child: Row(
        children: [
          PulseAnimation(
            minScale: 0.95,
            maxScale: 1.05,
            duration: const Duration(milliseconds: 1500),
            child: Container(
              width: 4,
              height: 50,
              decoration: BoxDecoration(
                color: _getSeverityColor(alert.severity),
                borderRadius: BorderRadius.circular(2),
                boxShadow: [
                  BoxShadow(
                    color: _getSeverityColor(alert.severity).withOpacity(0.5),
                    blurRadius: 4,
                    spreadRadius: 0.5,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        alert.title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1F2937),
                        ),
                      ),
                    ),
                    if (alert.isVerified)
                      ScaleInAnimation(
                        delay: const Duration(milliseconds: 100),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: Colors.green.withOpacity(0.3),
                                  width: 1,
                                ),
                              ),
                              child: const Text(
                                'VERIFIED',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  alert.description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 14, color: Colors.grey[500]),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        alert.location,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                    Text(
                      _formatTimestamp(alert.timestamp),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color _getSeverityColor(AlertSeverity severity) {
    switch (severity) {
      case AlertSeverity.low:
        return Colors.green;
      case AlertSeverity.medium:
        return Colors.orange;
      case AlertSeverity.high:
        return Colors.red;
      case AlertSeverity.critical:
        return Colors.red[800]!;
    }
  }

  String _formatTimestamp(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);
    
    if (difference.inHours < 1) {
      return '${difference.inMinutes}m ago';
    } else if (difference.inDays < 1) {
      return '${difference.inHours}h ago';
    } else {
      return '${difference.inDays}d ago';
    }
  }
}

class MockMapPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFB3E5FC)
      ..style = PaintingStyle.fill;

    // Draw water areas
    final path = Path();
    path.moveTo(0, size.height * 0.3);
    path.quadraticBezierTo(
      size.width * 0.3, size.height * 0.2,
      size.width * 0.6, size.height * 0.4,
    );
    path.quadraticBezierTo(
      size.width * 0.8, size.height * 0.5,
      size.width, size.height * 0.3,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);

    // Draw background terrain
    final terrainPaint = Paint()
      ..color = const Color(0xFF81C784)
      ..style = PaintingStyle.fill;

    final terrainPath = Path();
    terrainPath.moveTo(0, 0);
    terrainPath.lineTo(size.width, 0);
    terrainPath.lineTo(size.width, size.height * 0.3);
    terrainPath.quadraticBezierTo(
      size.width * 0.8, size.height * 0.5,
      size.width * 0.6, size.height * 0.4,
    );
    terrainPath.quadraticBezierTo(
      size.width * 0.3, size.height * 0.2,
      0, size.height * 0.3,
    );
    terrainPath.close();

    canvas.drawPath(terrainPath, terrainPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

enum AlertSeverity { low, medium, high, critical }

class HazardAlert {
  final String id;
  final String title;
  final String description;
  final AlertSeverity severity;
  final String location;
  final DateTime timestamp;
  final bool isVerified;
  final String reportedBy;

  HazardAlert({
    required this.id,
    required this.title,
    required this.description,
    required this.severity,
    required this.location,
    required this.timestamp,
    required this.isVerified,
    required this.reportedBy,
  });
}