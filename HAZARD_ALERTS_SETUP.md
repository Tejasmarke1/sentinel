# Hazard Alerts App - Setup Instructions

This Flutter app implements a comprehensive hazard alert system with Firebase Cloud Messaging, multilingual support, location-based notifications, and severity-based coloring.

## 🚀 Features Implemented

✅ **Firebase Cloud Messaging (FCM)**
- Push notifications for hazard alerts
- FCM token retrieval and management
- Background message handling
- Location-based filtering (50km radius)

✅ **Multilingual Support**
- English (default) and Hindi translations
- Automatic locale detection with English fallback
- 33+ alert-specific translation keys

✅ **Location-Based Notifications**
- GPS location integration
- 50km radius filtering for relevant alerts
- Distance calculation using Haversine formula

✅ **Severity-Based Coloring**
- Critical: Red (#E53E3E)
- Moderate: Orange (#FF8C00)
- Low: Green (#38A169)

✅ **Real-time Alerts Feed**
- Firestore integration with StreamBuilder
- Live updates and filtering
- Formatted timestamps

## 📁 Project Structure

```
lib/
├── models/
│   └── hazard_alert.dart          # Alert data model
├── services/
│   ├── fcm_service.dart           # Firebase Cloud Messaging
│   └── alerts_service.dart        # Firestore operations
├── pages/
│   └── alerts_page.dart           # Main alerts UI
├── utils/
│   └── alert_test_utils.dart      # Testing utilities  
├── l10n/
│   ├── app_en.arb                 # English translations
│   └── app_hi.arb                 # Hindi translations
└── main.dart                      # App initialization
```

## ⚙️ Setup Instructions

### 1. Firebase Configuration

**Android Setup:**
1. Add your `google-services.json` to `android/app/`
2. Ensure Firebase project has FCM enabled

**iOS Setup:**
1. Add your `GoogleService-Info.plist` to `ios/Runner/`
2. Configure APNs in Firebase Console

### 2. Dependencies

The following dependencies have been added to `pubspec.yaml`:

```yaml
dependencies:
  firebase_messaging: ^15.1.3
  flutter_local_notifications: ^17.2.3
  # ... existing dependencies
```

### 3. Permissions

**Android** (`android/app/src/main/AndroidManifest.xml`):
```xml
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED"/>
<uses-permission android:name="android.permission.VIBRATE" />
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
```

**iOS** (`ios/Runner/Info.plist`):
```xml
<key>NSLocationWhenInUseUsageDescription</key>
<string>This app needs location access to show nearby hazard alerts</string>
```

### 4. Firestore Schema

Create a collection named `hazard_alerts` with the following structure:

```javascript
{
  "id": "auto-generated",
  "title": "Flood Alert",
  "description": "Heavy rainfall in Mumbai",
  "location": {
    "lat": 19.0760,
    "lng": 72.8777
  },
  "severity": "critical", // "critical", "moderate", "low"
  "timestamp": "2024-01-01T12:00:00Z",
  "imageUrl": "optional_image_url",
  "reportedBy": "Coast Guard Mumbai"
}
```

### 5. Running the App

```bash
# Get dependencies
flutter pub get

# Generate localization files
flutter gen-l10n

# Run the app
flutter run
```

## 📱 Usage Examples

### Adding Test Alerts

```dart
import 'package:coastsentinel/utils/alert_test_utils.dart';

// Add sample alerts for testing
await AlertTestUtils.addSampleAlerts();

// Add a critical test alert at current location  
await AlertTestUtils.addTestCriticalAlert(
  latitude: 19.0760,
  longitude: 72.8777,
  customTitle: "Test Critical Alert",
);

// Get FCM token for testing
String? token = await AlertTestUtils.getFCMToken();
print("FCM Token: $token");
```

### Sending Test Notifications

Use Firebase Console or your backend to send test notifications with this payload:

```json
{
  "notification": {
    "title": "⚠️ Critical Alert",
    "body": "Dangerous conditions detected in your area"
  },
  "data": {
    "lat": "19.0760",
    "lng": "72.8777", 
    "severity": "critical",
    "alert_id": "test_001",
    "title": "High Waves Warning",
    "description": "Extremely dangerous wave conditions detected."
  }
}
```

## 🎨 UI Features

### Alerts Page
- **Tabbed Interface**: Filter by All, Critical, Moderate, Low
- **Real-time Updates**: StreamBuilder with Firestore
- **Distance Display**: Shows distance from user location
- **Severity Badges**: Colored indicators with icons
- **Detailed View**: Modal bottom sheet with full alert details
- **Pull-to-Refresh**: Manual refresh capability

### Severity Colors
- **Critical**: Red background with warning icon
- **Moderate**: Orange background with info icon  
- **Low**: Green background with info icon

### Localization
- **Automatic Detection**: Based on device locale
- **Fallback Support**: Defaults to English for unsupported locales
- **Context-Aware**: 33+ alert-specific translation keys

## 🔧 Customization

### Adding New Languages

1. Create new `.arb` file (e.g., `app_es.arb` for Spanish)
2. Add locale to `supportedLocales` in `main.dart`
3. Run `flutter gen-l10n` to generate files

### Modifying Alert Schema

1. Update `HazardAlert` model in `models/hazard_alert.dart`
2. Update Firestore operations in `services/alerts_service.dart`
3. Update UI components in `pages/alerts_page.dart`

### Customizing Notification Behavior

Modify `FCMService` in `services/fcm_service.dart`:
- Change distance radius (default: 50km)
- Modify notification channels
- Update severity colors

## 🧪 Testing

### Manual Testing
1. Use `AlertTestUtils.addSampleAlerts()` to populate test data
2. Test location permissions and GPS functionality
3. Send test FCM messages through Firebase Console
4. Verify distance-based filtering with different locations

### Integration Testing
- Test Firestore real-time updates
- Verify FCM token generation and refresh
- Test notification handling in foreground/background
- Validate localization switching

## 🚨 Troubleshooting

### Common Issues

**FCM Token Not Generated:**
- Check Firebase configuration files
- Verify internet connectivity
- Ensure Google Play Services (Android) or APNs (iOS) setup

**Notifications Not Received:**
- Check notification permissions
- Verify FCM server key configuration
- Test with Firebase Console first

**Location Not Working:**
- Check location permissions in device settings
- Ensure location services are enabled
- Test with different accuracy levels

**Localization Not Working:**
- Run `flutter gen-l10n` after adding new keys
- Check supported locales in MaterialApp
- Verify .arb file syntax

## 📋 Next Steps

### Potential Enhancements
1. **Push Notification Topics**: Subscribe to region-based topics
2. **Image Support**: Display images in alert cards
3. **Map Integration**: Show alerts on map view
4. **Push to Talk**: Voice-based alert reporting
5. **Offline Support**: Cache alerts for offline viewing
6. **Analytics**: Track alert engagement and user behavior

### Backend Integration
1. **Admin Panel**: Web interface for managing alerts
2. **API Integration**: REST API for alert management
3. **AI/ML**: Automatic severity classification
4. **Weather API**: Integration with weather services
5. **Social Features**: User comments and alert verification

## 📄 License

This implementation follows Flutter and Firebase best practices and includes comprehensive error handling, accessibility features, and performance optimizations.