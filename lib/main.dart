import 'package:flutter/material.dart';
import 'screens/profile_page.dart'; // Página de perfil

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(), // Inicia com a página de perfil
    );
  }
}
