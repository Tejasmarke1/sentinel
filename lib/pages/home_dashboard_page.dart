// home_dashboard_page.dart
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
      title: 'High Waves Alert',
      description: 'Dangerous wave conditions reported near Goa beaches',
      severity: AlertSeverity.high,
      location: 'Goa, India',
      timestamp: DateTime.now().subtract(const Duration(hours: 2)),
      isVerified: true,
      reportedBy: 'Coast Guard',
    ),
    HazardAlert(
      id: '2',
      title: 'Strong Currents Warning',
      description: 'Unusual current patterns detected off Mumbai coast',
      severity: AlertSeverity.medium,
      location: 'Mumbai, Maharashtra',
      timestamp: DateTime.now().subtract(const Duration(hours: 5)),
      isVerified: false,
      reportedBy: 'Local Fisher',
    ),
    HazardAlert(
      id: '3',
      title: 'Weather Advisory',
      description: 'Storm approaching Kerala coastline, avoid water activities',
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
              const Text(
                'SENTINEL',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      'Live',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              Text(
                'Ocean Safety Dashboard',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMapSection() {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: _buildMapWidget(),
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
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _buildStatCard('Active Alerts', '${_mockAlerts.length}', Colors.red),
          const SizedBox(width: 12),
          _buildStatCard('Verified', '2', Colors.green),
          const SizedBox(width: 12),
          _buildStatCard('This Week', '12', Colors.blue),
        ],
      ),
    );
  }

  Widget _buildStatCard(String title, String value, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
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

  Widget _buildAlertsSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Recent Hazard Reports',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F2937),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.builder(
              itemCount: _mockAlerts.length,
              itemBuilder: (context, index) {
                return _buildAlertCard(_mockAlerts[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAlertCard(HazardAlert alert) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: _getSeverityColor(alert.severity).withOpacity(0.3),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 50,
            decoration: BoxDecoration(
              color: _getSeverityColor(alert.severity),
              borderRadius: BorderRadius.circular(2),
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
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(4),
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

    // Draw coastline
    final coastPaint = Paint()
      ..color = const Color(0xFF81C784)
      ..style = PaintingStyle.fill;

    final coastPath = Path();
    coastPath.moveTo(0, 0);
    coastPath.lineTo(size.width, 0);
    coastPath.lineTo(size.width, size.height * 0.3);
    coastPath.quadraticBezierTo(
      size.width * 0.8, size.height * 0.5,
      size.width * 0.6, size.height * 0.4,
    );
    coastPath.quadraticBezierTo(
      size.width * 0.3, size.height * 0.2,
      0, size.height * 0.3,
    );
    coastPath.close();

    canvas.drawPath(coastPath, coastPaint);
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