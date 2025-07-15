import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [Icon(Icons.person), Text('You are Vegetarian'),
      Icon(Icons.settings),
      Icon(Icons.logout),
      ]),
    );
  }
}
