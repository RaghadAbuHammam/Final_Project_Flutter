import 'package:finalproject/ui/choose/choose_screen.dart';
import 'package:finalproject/ui/favorites_screen.dart';
//import 'package:finalproject/widgets/choose_categoryv.dart';
import 'package:finalproject/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:dot_curved_bottom_nav/dot_curved_bottom_nav.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({super.key});

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

List<Widget> icons = [
  Icon(Icons.restaurant),
  Icon(Icons.favorite),
  Icon(Icons.person),
];
int index = 0;
List<Widget> screens = [ChooseScreen(), FavoritesScreen(), CustomDrawer()];

class _CustomBottomNavState extends State<CustomBottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey.shade500,
      bottomNavigationBar: DotCurvedBottomNav(
        backgroundColor: Colors.grey,
        items: icons,
        indicatorColor: Colors.grey,
        selectedIndex: index,
        onTap: (int newvalue) {
          setState(() {
            index = newvalue;
          });
        },
      ),
      body: screens[index],
    );
  }
}
