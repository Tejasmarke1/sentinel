import 'package:flutter/material.dart';
import '../utils/alert_test_utils.dart';
import '../services/fcm_service.dart';


/// Test page for validating the hazard alerts implementation
/// This page provides buttons to test all the implemented features
class AlertsTestPage extends StatefulWidget {
  const AlertsTestPage({super.key});

  @override
  State<AlertsTestPage> createState() => _AlertsTestPageState();
}

class _AlertsTestPageState extends State<AlertsTestPage> {
  final FCMService _fcmService = FCMService.instance;

  
  String _fcmToken = 'Loading...';
  String _status = 'Ready to test';

  @override
  void initState() {
    super.initState();
    _loadFCMToken();
  }

  Future<void> _loadFCMToken() async {
    final token = await _fcmService.refreshToken();
    setState(() {
      _fcmToken = token ?? 'Failed to get token';
    });
  }

  Future<void> _addSampleAlerts() async {
    setState(() {
      _status = 'Adding sample alerts...';
    });
    
    try {
      await AlertTestUtils.addSampleAlerts();
      setState(() {
        _status = 'Sample alerts added successfully!';
      });
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Sample alerts added successfully!'),
          backgroundColor: Colors.green,
        ),
      );
    } catch (e) {
      setState(() {
        _status = 'Error adding alerts: $e';
      });
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _addTestCriticalAlert() async {
    setState(() {
      _status = 'Adding critical test alert...';
    });
    
    try {
      // Mumbai coordinates for testing
      await AlertTestUtils.addTestCriticalAlert(
        latitude: 19.0760,
        longitude: 72.8777,
        customTitle: 'TEST: Critical Ocean Hazard',
        customDescription: 'This is a test critical alert to verify the notification system is working properly.',
      );
      
      setState(() {
        _status = 'Critical test alert added!';
      });
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Critical alert added! Check the Alerts tab.'),
          backgroundColor: Colors.red,
        ),
      );
    } catch (e) {
      setState(() {
        _status = 'Error adding critical alert: $e';
      });
    }
  }

  Future<void> _clearTestAlerts() async {
    setState(() {
      _status = 'Clearing test alerts...';
    });
    
    try {
      await AlertTestUtils.clearTestAlerts();
      setState(() {
        _status = 'Test alerts cleared!';
      });
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Test alerts cleared successfully!'),
          backgroundColor: Colors.blue,
        ),
      );
    } catch (e) {
      setState(() {
        _status = 'Error clearing alerts: $e';
      });
    }
  }

  Future<void> _testLocationUpdate() async {
    setState(() {
      _status = 'Updating location...';
    });
    
    try {
      await _fcmService.updateLocation();
      setState(() {
        _status = 'Location updated successfully!';
      });
    } catch (e) {
      setState(() {
        _status = 'Error updating location: $e';
      });
    }
  }

  void _copyTokenToClipboard() {
    if (_fcmToken != 'Loading...' && _fcmToken != 'Failed to get token') {
      // Copy token to clipboard for testing with Firebase Console
      // Note: You'll need to add clipboard package for this to work
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Use this token in Firebase Console to send test notifications'),
          duration: Duration(seconds: 3),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alerts Testing'),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Status Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'System Status',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(_status),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // FCM Token Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'FCM Token',
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.copy),
                          onPressed: _copyTokenToClipboard,
                          tooltip: 'Copy token',
                        ),
                        IconButton(
                          icon: const Icon(Icons.refresh),
                          onPressed: _loadFCMToken,
                          tooltip: 'Refresh token',
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        _fcmToken,
                        style: const TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Test Actions
            Text(
              'Test Actions',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: 12),
            
            // Test Buttons
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.2,
                children: [
                  _buildTestButton(
                    icon: Icons.add_alert,
                    title: 'Add Sample Alerts',
                    subtitle: 'Populate with test data',
                    color: Colors.blue,
                    onPressed: _addSampleAlerts,
                  ),
                  _buildTestButton(
                    icon: Icons.warning,
                    title: 'Critical Alert',
                    subtitle: 'Test critical notification',
                    color: Colors.red,
                    onPressed: _addTestCriticalAlert,
                  ),
                  _buildTestButton(
                    icon: Icons.location_on,
                    title: 'Update Location',
                    subtitle: 'Refresh GPS position',
                    color: Colors.green,
                    onPressed: _testLocationUpdate,
                  ),
                  _buildTestButton(
                    icon: Icons.clear_all,
                    title: 'Clear Tests',
                    subtitle: 'Remove test alerts',
                    color: Colors.orange,
                    onPressed: _clearTestAlerts,
                  ),
                ],
              ),
            ),
            
            // Instructions
            Card(
              color: Colors.blue[50],
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.info, color: Colors.blue[700]),
                        const SizedBox(width: 8),
                        Text(
                          'Testing Instructions',
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[700],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '1. Add sample alerts to populate the alerts feed\n'
                      '2. Use the FCM token to send test notifications via Firebase Console\n'
                      '3. Check the Alerts tab to see real-time updates\n'
                      '4. Test location-based filtering by adding alerts at different coordinates',
                      style: TextStyle(fontSize: 14),
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

  Widget _buildTestButton({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return Card(
      elevation: 2,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 32,
                color: color,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}