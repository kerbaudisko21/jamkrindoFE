import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jakrindo/splash_screen.dart';
import 'login_page.dart';
import 'register_page.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskTrackerApp(),
    )
  );
}

class TaskTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}
