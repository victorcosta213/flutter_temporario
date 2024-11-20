import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.grey[300],
          child: Icon(
            Icons.person,
            size: 40,
            color: Colors.grey[700],
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Olá, Ana!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("Você realizou 5 desafios hoje!"),
              SizedBox(height: 8),
              Text(
                "200 xp",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Center(
          child: SizedBox(
            width: 100,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.edit, size: 14),
              label: Text(
                "Editar perfil",
                style: TextStyle(fontSize: 12),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade400,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                minimumSize: Size(0, 0),
              ),
            ),
          ),
        )
      ],
    );
  }
}
