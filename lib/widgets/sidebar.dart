import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Ana Souza"),
            accountEmail: Text("ana.souza@example.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text(
                "A",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(color: Colors.orange),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Início'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Perfil'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
