import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Row(
                children: [
                  Icon(Icons.person, size: 100, color: Colors.black),
                  SizedBox(width: 10),
                ],
              ),

              ListTile(
                leading: Icon(Icons.settings, color: Colors.grey[700]),
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: width * 0.042),
                ),
                onTap: () {
                  // Add navigation or functionality
                },
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.grey[700]),
                title: Text(
                  'Logout',
                  style: TextStyle(fontSize: width * 0.042),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('routelogin');
                },
              ),

              Spacer(),
              Center(
                child: Text(
                  '© 2025 Your App',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: width * 0.035,
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
