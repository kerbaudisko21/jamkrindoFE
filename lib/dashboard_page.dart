import 'package:flutter/material.dart';
import 'package:jakrindo/feedback_page.dart';
import 'package:jakrindo/login_page.dart';
import 'package:jakrindo/main_menu_page.dart';
import 'package:jakrindo/profile_page.dart';
import 'package:jakrindo/task_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late SharedPreferences currUserData;
  String email = '';
  bool login = true;

  int index = 0;
  final screen = [MainMenuPage(), TaskPage(), FeedbackPage(), ProfilePage()];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }

  void initial() async {
    currUserData = await SharedPreferences.getInstance();
    setState(() {
      login = currUserData.getBool('login') ?? true;
    });
    if (login) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    } else {
      setState(() {
        email = currUserData.getString('email') ?? '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MainMenuPage(),
        extendBody: true,
        );
  }
}
