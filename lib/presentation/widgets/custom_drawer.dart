import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerHeader(child: CircleAvatar(child: Icon(Icons.person))),
        ListTile(leading: Icon(Icons.home), title: Text('Home')),
        ListTile(leading: Icon(Icons.videogame_asset), title: Text('Games')),
        ListTile(leading: Icon(Icons.android), title: Text('Apps')),
        ListTile(leading: Icon(Icons.newspaper), title: Text('News')),
        ListTile(leading: Icon(Icons.rocket), title: Text('AiHive')),
      ],
    );
  }
}
