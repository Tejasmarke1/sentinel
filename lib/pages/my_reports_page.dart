import 'package:flutter/material.dart';

class MyReportsPage extends StatelessWidget {
  const MyReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.assignment_rounded, size: 64, color: Colors.blue),
          SizedBox(height: 16),
          Text('My Reports',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Text('Your submitted hazard reports'),
        ],
      ),
    );
  }
}
