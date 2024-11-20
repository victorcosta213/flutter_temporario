import 'package:flutter/material.dart';
import '../widgets/sidebar.dart'; // Sidebar
import '../widgets/profile_header.dart'; // Cabeçalho do perfil
import '../widgets/day_chip.dart'; // Chips de dias da semana
import '../widgets/badge_icon.dart'; // Ícones de badges
import '../widgets/green_button.dart'; // Botões verdes

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Perfil"),
        centerTitle: true,
        actions: [
          Icon(Icons.headset_mic),
          SizedBox(width: 16),
          Icon(Icons.notifications),
          SizedBox(width: 16),
        ],
      ),
      drawer: Sidebar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileHeader(), // Cabeçalho de perfil
            SizedBox(height: 24),
            Text(
              "Relatório semanal",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DayChip(day: "Seg", date: "6/7", selected: true),
                DayChip(day: "Ter", date: "7/7", selected: true),
                DayChip(day: "Qua", date: "8/7", selected: true),
                DayChip(day: "Qui", date: "9/7", selected: true),
                DayChip(day: "Sex", date: "10/7", selected: false),
                DayChip(day: "Sáb", date: "11/7", selected: false),
                DayChip(day: "Dom", date: "12/7", selected: false),
              ],
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: GreenButton(text: "Explorar"),
            ),
            SizedBox(height: 24),
            Text(
              "Minhas Badges",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orange),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BadgeIcon(icon: Icons.group, label: "Badge 1"),
                  BadgeIcon(icon: Icons.sunny, label: "Badge 2"),
                  BadgeIcon(icon: Icons.music_note, label: "Badge 3"),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GreenButton(text: "Ver todas"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
