import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'The Recipes',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: InkWell(
        child: const Icon(Icons.list),
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
      ),

      actions: const [
        Icon(Icons.search),
        SizedBox(width: 10),
        CircleAvatar(child: Icon(Icons.person)),
        SizedBox(width: 10),
      ],
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
