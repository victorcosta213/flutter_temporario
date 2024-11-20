import 'package:flutter/material.dart';

class BadgeIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  BadgeIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.orange.shade100,
          child: Icon(
            icon,
            size: 28,
            color: Colors.orange,
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
