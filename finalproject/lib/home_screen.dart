import 'package:finalproject/ui/intro/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:finalproject/routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
      routes: appRoutes,
    );
  }
}