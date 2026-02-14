import 'package:flutter/material.dart';
import '../utils/glassmorphism.dart';
import '../utils/animations.dart';

/// Example implementation of glassmorphism and animations in your alerts page
/// 
/// This file demonstrates various ways to use the glassmorphism and animation utilities.
/// You can apply these patterns to any page in your app.

class GlassAlertCardExample extends StatelessWidget {
  final String title;
  final String severity;
  final String location;
  final String time;
  final VoidCallback onTap;

  const GlassAlertCardExample({
    Key? key,
    required this.title,
    required this.severity,
    required this.location,
    required this.time,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Wrap card with slide-in animation
    return SlideInAnimation(
      delay: const Duration(milliseconds: 100),
      child: GestureDetector(
        onTap: onTap,
        child: GlassCard(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          padding: const EdgeInsets.all(16),
          hasGradient: true,
          gradientColors: [
            Colors.white.withOpacity(0.25),
            Colors.white.withOpacity(0.15),
          ],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // Animated severity badge with glassmorphism
                  ScaleInAnimation(
                    delay: const Duration(milliseconds: 200),
                    child: GlassmorphicContainer(
                      width: 80,
                      height: 28,
                      borderRadius: 14,
                      blur: 8,
                      color: _getSeverityColor(severity),
                      opacity: 0.3,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Center(
                        child: Text(
                          severity,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  // Animated time badge
                  FadeInAnimation(
                    delay: const Duration(milliseconds: 300),
                    child: Icon(
                      Icons.access_time,
                      size: 14,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(width: 4),
                  FadeInAnimation(
                    delay: const Duration(milliseconds: 300),
                    child: Text(
                      time,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              // Animated title
              FadeInAnimation(
                delay: const Duration(milliseconds: 250),
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              // Animated location
              FadeInAnimation(
                delay: const Duration(milliseconds: 350),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 14,
                      color: Colors.white.withOpacity(0.7),
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        location,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getSeverityColor(String severity) {
    switch (severity.toLowerCase()) {
      case 'critical':
        return Colors.red;
      case 'high':
        return Colors.orange;
      case 'moderate':
        return Colors.yellow;
      default:
        return Colors.blue;
    }
  }
}

/// Example of glassmorphic header with animation
class GlassHeaderExample extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget? action;

  const GlassHeaderExample({
    Key? key,
    required this.title,
    required this.subtitle,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Background gradient
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF1E40AF),
            const Color(0xFF3B82F6),
            const Color(0xFF60A5FA),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: GlassCard(
        margin: const EdgeInsets.all(20),
        hasGradient: true,
        gradientColors: [
          Colors.white.withOpacity(0.2),
          Colors.white.withOpacity(0.1),
        ],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Animated title
            SlideInAnimation(
              begin: const Offset(-0.3, 0),
              delay: const Duration(milliseconds: 100),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            // Animated subtitle
            FadeInAnimation(
              delay: const Duration(milliseconds: 200),
              child: Text(
                subtitle,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 14,
                ),
              ),
            ),
            if (action != null) ...[
              const SizedBox(height: 16),
              ScaleInAnimation(
                delay: const Duration(milliseconds: 300),
                child: action!,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

/// Example of glassmorphic stat cards with animations
class GlassStatCardExample extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color color;
  final Duration delay;

  const GlassStatCardExample({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
    this.delay = Duration.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaleInAnimation(
      delay: delay,
      child: GlassCard(
        hasGradient: true,
        gradientColors: [
          color.withOpacity(0.2),
          color.withOpacity(0.1),
        ],
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Pulsing icon
            PulseAnimation(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.3),
                    width: 1.5,
                  ),
                ),
                child: Icon(icon, color: Colors.white, size: 24),
              ),
            ),
            const SizedBox(height: 12),
            // Animated value
            BounceAnimation(
              child: Text(
                value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 4),
            // Fading title
            FadeInAnimation(
              delay: const Duration(milliseconds: 200),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Example of glassmorphic floating action button with animation
class GlassFABExample extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;

  const GlassFABExample({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaleInAnimation(
      delay: const Duration(milliseconds: 400),
      child: GlassButton(
        onPressed: onPressed,
        width: 56,
        height: 56,
        borderRadius: 28,
        color: const Color(0xFF3B82F6),
        child: Icon(icon, color: Colors.white),
      ),
    );
  }
}

/// Example of glassmorphic bottom sheet
class GlassBottomSheetExample extends StatelessWidget {
  final Widget child;

  const GlassBottomSheetExample({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideInAnimation(
      begin: const Offset(0, 0.5),
      duration: const Duration(milliseconds: 400),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          child: GlassCard(
            borderRadius: 24,
            hasGradient: true,
            gradientColors: [
              Colors.white.withOpacity(0.9),
              Colors.white.withOpacity(0.8),
            ],
            child: child,
          ),
        ),
      ),
    );
  }
}

/// Example of animated list with glassmorphic items
class GlassAnimatedListExample extends StatelessWidget {
  final List<Widget> items;

  const GlassAnimatedListExample({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredListAnimation(
      delay: const Duration(milliseconds: 80),
      itemDuration: const Duration(milliseconds: 400),
      children: items.map((item) {
        return GlassCard(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: item,
        );
      }).toList(),
    );
  }
}

/// Example usage guide
/// 
/// To use these in your alerts_page.dart or any other page:
/// 
/// 1. Import the utilities:
///    import '../utils/glassmorphism.dart';
///    import '../utils/animations.dart';
/// 
/// 2. Replace regular containers with glass containers:
///    Instead of: Container(...)
///    Use: GlassCard(child: ...) or GlassmorphicContainer(child: ...)
/// 
/// 3. Wrap widgets with animations:
///    - For fade in: FadeInAnimation(child: ...)
///    - For slide in: SlideInAnimation(child: ...)
///    - For scale in: ScaleInAnimation(child: ...)
///    - For lists: StaggeredListAnimation(children: [...])
/// 
/// 4. Create glassmorphic buttons:
///    GlassButton(onPressed: () {}, child: Text('Button'))
/// 
/// 5. Add shimmer to loading states:
///    ShimmerLoading(child: ...)
/// 
/// 6. Add pulse to important elements:
///    PulseAnimation(child: Icon(...))
