import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geolocator/geolocator.dart';
import '../models/hazard_alert.dart';
import '../services/alerts_service.dart';
import '../services/fcm_service.dart';
import '../l10n/app_localizations.dart';
import 'dart:math' as math;

// ✨ ADD THESE IMPORTS
import '../utils/glassmorphism.dart';
import '../utils/animations.dart';
import 'dart:ui'; // For BackdropFilter

/// ENHANCED VERSION OF ALERTS PAGE WITH GLASSMORPHISM & ANIMATIONS
/// 
/// Changes made:
/// 1. Added glassmorphic header with blur effect
/// 2. Animated header elements (fade in, slide in)
/// 3. Glass cards for each alert with gradient
/// 4. Staggered animation for alert list items
/// 5. Animated severity badges with pulse
/// 6. Glass tab bar with better blur effects
/// 7. Shimmer loading state
/// 8. Animated empty/error states

class AlertsPageEnhanced extends StatefulWidget {
  const AlertsPageEnhanced({super.key});

  @override
  State<AlertsPageEnhanced> createState() => _AlertsPageEnhancedState();
}

class _AlertsPageEnhancedState extends State<AlertsPageEnhanced> with TickerProviderStateMixin {
  final AlertsService _alertsService = AlertsService.instance;
  final FCMService _fcmService = FCMService.instance;
  
  String _selectedFilter = 'all';
  Position? _currentPosition;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _getCurrentLocation();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _getCurrentLocation() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) return;

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) return;
      }

      if (permission == LocationPermission.deniedForever) return;

      _currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      
      if (mounted) setState(() {});
    } catch (e) {
      // Handle error silently
    }
  }

  double _calculateDistance(double lat1, double lon1, double lat2, double lon2) {
    const double earthRadius = 6371;
    double dLat = (lat2 - lat1) * (math.pi / 180);
    double dLon = (lon2 - lon1) * (math.pi / 180);
    
    double a = math.sin(dLat / 2) * math.sin(dLat / 2) +
        math.cos(lat1 * (math.pi / 180)) *
            math.cos(lat2 * (math.pi / 180)) *
            math.sin(dLon / 2) *
            math.sin(dLon / 2);
    
    double c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
    return earthRadius * c;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // ✨ ENHANCED HEADER WITH GLASSMORPHISM
            _buildGlassHeader(l10n),
            // Content
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildAlertsList(null, l10n),
                  _buildAlertsList('critical', l10n),
                  _buildAlertsList('moderate', l10n),
                  _buildAlertsList('low', l10n),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ✨ NEW: Glassmorphic Header with Animations
  Widget _buildGlassHeader(AppLocalizations l10n) {
    return SlideInAnimation(
      delay: const Duration(milliseconds: 100),
      begin: const Offset(0, -0.3),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFF1E40AF),
              const Color(0xFF3B82F6),
              const Color(0xFF60A5FA),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.0, 0.6, 1.0],
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF3B82F6).withOpacity(0.25),
              blurRadius: 20,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon and Title Row
            FadeInAnimation(
              delay: const Duration(milliseconds: 200),
              child: Row(
                children: [
                  // ✨ Glassmorphic icon container with pulse
                  PulseAnimation(
                    duration: const Duration(milliseconds: 2000),
                    minScale: 0.98,
                    maxScale: 1.02,
                    child: GlassmorphicContainer(
                      width: 56,
                      height: 56,
                      borderRadius: 16,
                      blur: 10,
                      color: Colors.white,
                      opacity: 0.2,
                      border: Border.all(
                        color: Colors.white.withOpacity(0.4),
                        width: 1.5,
                      ),
                      child: const Icon(
                        Icons.warning_amber_rounded,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Animated title
                        FadeInAnimation(
                          delay: const Duration(milliseconds: 250),
                          child: Text(
                            l10n.alerts_title,
                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: -0.5,
                            ),
                          ),
                        ),
                        // Animated subtitle
                        FadeInAnimation(
                          delay: const Duration(milliseconds: 300),
                          child: Text(
                            l10n.alerts_subtitle,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // ✨ Enhanced Glassmorphic Tab Bar
            ScaleInAnimation(
              delay: const Duration(milliseconds: 350),
              curve: Curves.easeOutBack,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.4),
                        width: 1.5,
                      ),
                    ),
                    child: TabBar(
                      controller: _tabController,
                      indicator: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      labelColor: const Color(0xFF3B82F6),
                      unselectedLabelColor: Colors.white,
                      labelStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                      unselectedLabelStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                      tabs: [
                        Tab(text: l10n.alerts_filter_all),
                        Tab(text: l10n.alerts_filter_critical),
                        Tab(text: l10n.alerts_filter_moderate),
                        Tab(text: l10n.alerts_filter_low),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAlertsList(String? severityFilter, AppLocalizations l10n) {
    return StreamBuilder<List<HazardAlert>>(
      stream: severityFilter == null
          ? _alertsService.getAlertsStream()
          : _alertsService.getAlertsBySeverity(severityFilter),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return _buildLoadingState(l10n);
        }

        if (snapshot.hasError) {
          return _buildErrorState(l10n);
        }

        final alerts = snapshot.data ?? [];

        if (alerts.isEmpty) {
          return _buildEmptyState(l10n, severityFilter);
        }

        return RefreshIndicator(
          onRefresh: () async {
            setState(() {});
          },
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: alerts.length,
            itemBuilder: (context, index) {
              // ✨ Add staggered animation to each card
              return SlideInAnimation(
                delay: Duration(milliseconds: 100 + (index * 80)),
                begin: const Offset(0.3, 0),
                curve: Curves.easeOutCubic,
                child: _buildGlassAlertCard(alerts[index], l10n),
              );
            },
          ),
        );
      },
    );
  }

  // ✨ NEW: Enhanced Loading State with Shimmer
  Widget _buildLoadingState(AppLocalizations l10n) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Shimmer loading effect
          ShimmerLoading(
            duration: const Duration(milliseconds: 1500),
            baseColor: const Color(0xFFE0E0E0),
            highlightColor: const Color(0xFFF5F5F5),
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: 120,
                  height: 16,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          FadeInAnimation(
            child: Text(
              l10n.alerts_loading,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.grey[600],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ✨ Enhanced Error State with Animation
  Widget _buildErrorState(AppLocalizations l10n) {
    return Center(
      child: FadeInAnimation(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BounceAnimation(
              child: Icon(
                Icons.error_outline,
                size: 64,
                color: Colors.grey[400],
              ),
            ),
            const SizedBox(height: 16),
            SlideInAnimation(
              delay: const Duration(milliseconds: 200),
              child: Text(
                l10n.alerts_error_title,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            FadeInAnimation(
              delay: const Duration(milliseconds: 300),
              child: Text(
                l10n.alerts_error_subtitle,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 24),
            ScaleInAnimation(
              delay: const Duration(milliseconds: 400),
              child: GlassButton(
                onPressed: () => setState(() {}),
                width: 150,
                height: 48,
                color: const Color(0xFF3B82F6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.refresh, color: Colors.white),
                    const SizedBox(width: 8),
                    Text(
                      l10n.alerts_retry,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ✨ Enhanced Empty State with Animation
  Widget _buildEmptyState(AppLocalizations l10n, String? severityFilter) {
    return Center(
      child: FadeInAnimation(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BounceAnimation(
              child: Icon(
                Icons.notifications_none,
                size: 64,
                color: Colors.grey[400],
              ),
            ),
            const SizedBox(height: 16),
            SlideInAnimation(
              delay: const Duration(milliseconds: 200),
              child: Text(
                l10n.alerts_empty_title,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            FadeInAnimation(
              delay: const Duration(milliseconds: 300),
              child: Text(
                l10n.alerts_empty_subtitle,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ✨ NEW: Glassmorphic Alert Card
  Widget _buildGlassAlertCard(HazardAlert alert, AppLocalizations l10n) {
    final distance = _currentPosition != null
        ? _calculateDistance(
            _currentPosition!.latitude,
            _currentPosition!.longitude,
            alert.location.latitude,
            alert.location.longitude,
          )
        : null;

    return GlassCard(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      hasGradient: true,
      gradientColors: [
        Colors.white.withOpacity(0.25),
        Colors.white.withOpacity(0.15),
      ],
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () => _showAlertDetails(alert, l10n),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Row with animated severity badge
              Row(
                children: [
                  // ✨ Animated severity badge
                  ScaleInAnimation(
                    delay: const Duration(milliseconds: 100),
                    child: GlassmorphicContainer(
                      height: 28,
                      borderRadius: 20,
                      blur: 8,
                      color: alert.severityColor,
                      opacity: 0.2,
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      border: Border.all(
                        color: alert.severityColor.withOpacity(0.4),
                        width: 1.5,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          PulseAnimation(
                            minScale: 0.8,
                            maxScale: 1.2,
                            duration: const Duration(milliseconds: 1500),
                            child: Container(
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                color: alert.severityColor,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: alert.severityColor.withOpacity(0.5),
                                    blurRadius: 4,
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            _getSeverityText(alert.severity, l10n),
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: alert.severityColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  // ✨ Animated time badge
                  FadeInAnimation(
                    delay: const Duration(milliseconds: 200),
                    child: Text(
                      alert.getFormattedTimestamp(),
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // ✨ Animated title
              FadeInAnimation(
                delay: const Duration(milliseconds: 150),
                child: Text(
                  alert.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              // ✨ Animated description
              FadeInAnimation(
                delay: const Duration(milliseconds: 200),
                child: Text(
                  alert.description,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white.withOpacity(0.85),
                    height: 1.4,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 16),
              // ✨ Glassmorphic footer
              ScaleInAnimation(
                delay: const Duration(milliseconds: 250),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.3),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 18,
                            color: Colors.white.withOpacity(0.9),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              distance != null
                                  ? l10n.alerts_distance_km(distance.toStringAsFixed(1))
                                  : alert.locationText,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white.withOpacity(0.9),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: Colors.white.withOpacity(0.9),
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
      ),
    );
  }

  String _getSeverityText(String severity, AppLocalizations l10n) {
    switch (severity.toLowerCase()) {
      case 'critical':
        return l10n.alerts_severity_critical;
      case 'high':
        return l10n.alerts_severity_critical;
      case 'moderate':
        return l10n.alerts_severity_moderate;
      case 'low':
        return l10n.alerts_severity_low;
      default:
        return severity;
    }
  }

  void _showAlertDetails(HazardAlert alert, AppLocalizations l10n) {
    final distance = _currentPosition != null
        ? _calculateDistance(
            _currentPosition!.latitude,
            _currentPosition!.longitude,
            alert.location.latitude,
            alert.location.longitude,
          )
        : null;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => SlideInAnimation(
        begin: const Offset(0, 0.3),
        duration: const Duration(milliseconds: 400),
        child: DraggableScrollableSheet(
          initialChildSize: 0.7,
          maxChildSize: 0.9,
          minChildSize: 0.5,
          expand: false,
          builder: (context, scrollController) => GlassCard(
            borderRadius: 20,
            hasGradient: true,
            gradientColors: [
              Colors.white.withOpacity(0.95),
              Colors.white.withOpacity(0.85),
            ],
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Handle
                  Center(
                    child: FadeInAnimation(
                      delay: const Duration(milliseconds: 100),
                      child: Container(
                        width: 40,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Severity Badge with animation
                  ScaleInAnimation(
                    delay: const Duration(milliseconds: 150),
                    child: GlassmorphicContainer(
                      height: 36,
                      borderRadius: 8,
                      color: alert.severityColor,
                      opacity: 0.3,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      border: Border.all(
                        color: alert.severityColor.withOpacity(0.5),
                        width: 1.5,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            alert.severityIcon,
                            color: alert.severityColor,
                            size: 18,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            _getSeverityText(alert.severity, l10n),
                            style: TextStyle(
                              color: alert.severityColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Title with animation
                  FadeInAnimation(
                    delay: const Duration(milliseconds: 200),
                    child: Text(
                      alert.title,
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Description
                  Expanded(
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: FadeInAnimation(
                        delay: const Duration(milliseconds: 250),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              alert.description,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(height: 20),
                            // Location Info with glass effect
                            ScaleInAnimation(
                              delay: const Duration(milliseconds: 300),
                              child: GlassmorphicContainer(
                                blur: 8,
                                color: Colors.grey[100]!,
                                opacity: 0.5,
                                borderRadius: 12,
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: const Color(0xFF3B82F6),
                                          size: 20,
                                        ),
                                        const SizedBox(width: 6),
                                        Text(
                                          l10n.alerts_location,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall
                                              ?.copyWith(
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      alert.locationText,
                                      style: Theme.of(context).textTheme.bodyMedium,
                                    ),
                                    if (distance != null) ...[
                                      const SizedBox(height: 6),
                                      Text(
                                        l10n.alerts_distance_km(
                                            distance.toStringAsFixed(1)),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            // Timestamp
                            FadeInAnimation(
                              delay: const Duration(milliseconds: 350),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    color: Colors.grey[600],
                                    size: 18,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    alert.getFormattedTimestamp(includeTime: true),
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          color: Colors.grey[600],
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            if (alert.reportedBy != null) ...[
                              const SizedBox(height: 12),
                              FadeInAnimation(
                                delay: const Duration(milliseconds: 400),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Colors.grey[600],
                                      size: 18,
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      l10n.alerts_reported_by(alert.reportedBy!),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            color: Colors.grey[600],
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
