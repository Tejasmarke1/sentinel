import 'package:flutter/material.dart';

class AlertsPage extends StatelessWidget {
  const AlertsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.warning_amber_rounded, size: 64, color: Colors.orange),
          SizedBox(height: 16),
          Text('Official Alerts',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Text('Push notifications and system updates'),
        ],
      ),
    );
  }
}