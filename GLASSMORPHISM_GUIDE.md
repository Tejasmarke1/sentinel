# Glassmorphism & Animation Implementation Guide

This guide shows you how to add glassmorphism effects and smooth animations to your CoastSentinel app.

## 📦 Files Created

1. **`lib/utils/glassmorphism.dart`** - Glassmorphic UI components
2. **`lib/utils/animations.dart`** - Animation wrapper widgets
3. **`lib/utils/glass_examples.dart`** - Example implementations

## 🎨 What's Glassmorphism?

Glassmorphism is a modern UI design trend that creates frosted glass effects with:
- Semi-transparent backgrounds with blur
- Light borders and subtle shadows
- Layered depth perception
- Modern, premium feel

## 🚀 Quick Start

### 1. Basic Glass Card

**Before:**
```dart
Container(
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(16),
  ),
  child: Text('Content'),
)
```

**After:**
```dart
import '../utils/glassmorphism.dart';

GlassCard(
  child: Text('Content'),
)
```

### 2. Glass Card with Gradient

```dart
GlassCard(
  hasGradient: true,
  gradientColors: [
    Colors.blue.withOpacity(0.2),
    Colors.purple.withOpacity(0.1),
  ],
  child: Text('Content'),
)
```

### 3. Custom Glassmorphic Container

```dart
GlassmorphicContainer(
  blur: 15.0,
  opacity: 0.2,
  color: Colors.white,
  borderRadius: 20,
  border: Border.all(
    color: Colors.white.withOpacity(0.3),
    width: 2,
  ),
  child: Text('Custom Glass'),
)
```

## ✨ Adding Animations

### 1. Fade In Animation

```dart
import '../utils/animations.dart';

FadeInAnimation(
  duration: Duration(milliseconds: 600),
  delay: Duration(milliseconds: 100),
  child: YourWidget(),
)
```

### 2. Slide In Animation

```dart
SlideInAnimation(
  delay: Duration(milliseconds: 200),
  begin: Offset(0.0, 0.3), // Slide from bottom
  child: YourWidget(),
)
```

### 3. Scale In Animation

```dart
ScaleInAnimation(
  delay: Duration(milliseconds: 150),
  curve: Curves.easeOutBack, // Bouncy effect
  child: YourWidget(),
)
```

### 4. Staggered List Animation

```dart
StaggeredListAnimation(
  delay: Duration(milliseconds: 80),
  children: [
    Widget1(),
    Widget2(),
    Widget3(),
  ],
)
```

### 5. Pulse Animation (for attention)

```dart
PulseAnimation(
  duration: Duration(milliseconds: 1000),
  child: Icon(Icons.notification_important),
)
```

### 6. Shimmer Loading Effect

```dart
ShimmerLoading(
  baseColor: Color(0xFFE0E0E0),
  highlightColor: Color(0xFFF5F5F5),
  child: Container(
    width: 200,
    height: 100,
    color: Colors.white,
  ),
)
```

## 🎯 Applying to Your Pages

### Apply to Alerts Page Header

Open `lib/pages/alerts_page.dart` and modify the header:

```dart
import '../utils/glassmorphism.dart';
import '../utils/animations.dart';

// Inside build method, replace the header Container:
SlideInAnimation(
  delay: Duration(milliseconds: 100),
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
      ),
    ),
    child: GlassCard(
      hasGradient: true,
      gradientColors: [
        Colors.white.withOpacity(0.15),
        Colors.white.withOpacity(0.05),
      ],
      child: Column(
        children: [
          FadeInAnimation(
            delay: Duration(milliseconds: 200),
            child: Row(
              children: [
                // Your existing header content
              ],
            ),
          ),
        ],
      ),
    ),
  ),
)
```

### Apply to Alert Cards

Wrap each alert card in the ListView:

```dart
SlideInAnimation(
  delay: Duration(milliseconds: 100),
  child: GlassCard(
    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    hasGradient: true,
    gradientColors: [
      Colors.white.withOpacity(0.2),
      Colors.white.withOpacity(0.1),
    ],
    child: ListTile(
      // Your existing card content
    ),
  ),
)
```

### Apply to Profile Page Stats

In `lib/pages/profile_page.dart`:

```dart
Row(
  children: [
    Expanded(
      child: ScaleInAnimation(
        delay: Duration(milliseconds: 100),
        child: GlassCard(
          hasGradient: true,
          gradientColors: [
            Colors.blue.withOpacity(0.2),
            Colors.blue.withOpacity(0.1),
          ],
          child: Column(
            children: [
              PulseAnimation(
                child: Icon(Icons.report, color: Colors.white),
              ),
              Text('12', style: TextStyle(color: Colors.white)),
              Text('Reports', style: TextStyle(color: Colors.white70)),
            ],
          ),
        ),
      ),
    ),
    // More stat cards...
  ],
)
```

### Apply to Buttons

Replace normal buttons with glassmorphic buttons:

```dart
GlassButton(
  onPressed: () {
    // Your action
  },
  child: Text(
    'Submit',
    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
  ),
)
```

## 🎨 Background Setup for Glass Effect

For glassmorphism to work best, you need a colorful background. Add this to your Scaffold:

```dart
Scaffold(
  body: Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF1E3A8A), // Dark blue
          Color(0xFF3B82F6), // Blue
          Color(0xFF8B5CF6), // Purple
        ],
      ),
    ),
    child: SafeArea(
      child: YourContent(),
    ),
  ),
)
```

## 💡 Pro Tips

### 1. Animation Delays
Use staggered delays for multiple elements:
```dart
FadeInAnimation(delay: Duration(milliseconds: 100), child: Widget1()),
FadeInAnimation(delay: Duration(milliseconds: 200), child: Widget2()),
FadeInAnimation(delay: Duration(milliseconds: 300), child: Widget3()),
```

### 2. Combining Effects
Nest animations for complex effects:
```dart
ScaleInAnimation(
  child: FadeInAnimation(
    child: GlassCard(
      child: YourContent(),
    ),
  ),
)
```

### 3. Performance
- Don't add blur to too many elements at once
- Use `blur: 10.0` instead of higher values when possible
- Limit animations to visible elements only

### 4. Accessibility
- Ensure text contrast is sufficient on glass backgrounds
- Test animations are not too fast for all users
- Provide option to reduce motion if needed

## 🎯 Common Patterns

### Pattern 1: Glass Header with Stats
```dart
Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [Color(0xFF1E40AF), Color(0xFF3B82F6)],
    ),
  ),
  child: Column(
    children: [
      SlideInAnimation(
        child: GlassCard(
          child: Text('Header Title', style: TextStyle(color: Colors.white)),
        ),
      ),
      SizedBox(height: 16),
      Row(
        children: [
          Expanded(
            child: ScaleInAnimation(
              delay: Duration(milliseconds: 100),
              child: GlassStatCard(...),
            ),
          ),
          Expanded(
            child: ScaleInAnimation(
              delay: Duration(milliseconds: 200),
              child: GlassStatCard(...),
            ),
          ),
        ],
      ),
    ],
  ),
)
```

### Pattern 2: Animated List with Glass Cards
```dart
ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) {
    return SlideInAnimation(
      delay: Duration(milliseconds: 80 * index),
      child: GlassCard(
        margin: EdgeInsets.all(8),
        child: ListTile(
          title: Text(items[index]),
        ),
      ),
    );
  },
)
```

### Pattern 3: Glass Bottom Sheet
```dart
showModalBottomSheet(
  context: context,
  backgroundColor: Colors.transparent,
  builder: (context) {
    return SlideInAnimation(
      begin: Offset(0, 0.5),
      child: GlassCard(
        borderRadius: 24,
        hasGradient: true,
        child: YourBottomSheetContent(),
      ),
    );
  },
)
```

## 🔧 Customization Options

### GlassCard Parameters
- `width` / `height`: Card dimensions
- `padding`: Internal spacing
- `margin`: External spacing
- `borderRadius`: Corner roundness (default: 16)
- `hasGradient`: Enable gradient overlay
- `gradientColors`: Custom gradient colors

### Animation Parameters
- `duration`: Animation length
- `delay`: Wait before starting
- `curve`: Animation easing (Curves.easeOut, Curves.bounceOut, etc.)
- `begin` / `end`: Start and end values

## 📱 Testing

Run your app to see the effects:
```bash
flutter run
```

Hot reload will work for most changes, but sometimes you may need to hot restart for animations to initialize properly.

## 🎨 Color Suggestions for Glass Backgrounds

### Option 1: Ocean Blue Gradient
```dart
colors: [Color(0xFF0369A1), Color(0xFF0284C7), Color(0xFF0EA5E9)]
```

### Option 2: Sunset Orange/Pink
```dart
colors: [Color(0xFFF97316), Color(0xFFEC4899), Color(0xFFA855F7)]
```

### Option 3: Forest Green
```dart
colors: [Color(0xFF059669), Color(0xFF10B981), Color(0xFF34D399)]
```

### Option 4: Emergency Red (for alerts)
```dart
colors: [Color(0xFFDC2626), Color(0xFFEF4444), Color(0xFFF87171)]
```

## 🚦 Next Steps

1. Start with one page (e.g., alerts_page.dart)
2. Apply glassmorphism to the main containers
3. Add simple fade-in animations
4. Test and adjust blur/opacity values
5. Apply to other pages once satisfied
6. Experiment with different gradient backgrounds

---

**Need help?** Check the examples in `lib/utils/glass_examples.dart` for complete component implementations!
