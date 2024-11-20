import 'package:flutter/material.dart';

class DayChip extends StatelessWidget {
  final String day;
  final String date;
  final bool selected;

  DayChip({required this.day, required this.date, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: selected ? Colors.orange : Colors.grey[300],
          child: Text(
            day,
            style: TextStyle(color: selected ? Colors.white : Colors.black),
          ),
        ),
        SizedBox(height: 4),
        Text(
          date,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
