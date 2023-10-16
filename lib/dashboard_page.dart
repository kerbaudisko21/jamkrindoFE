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
        body: screen[index],
        extendBody: true,
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: GNav(
              gap: 8,
              backgroundColor: Colors.white,
              color: Colors.blue,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.blueAccent.shade200,
              padding: EdgeInsets.all(16),
              onTabChange: (value) => {
                setState(() => index = value),
              },
              tabs: [
                GButton(icon: Icons.home, text: 'home'),
                GButton(icon: Icons.task, text: 'Task'),
                GButton(icon: Icons.feedback, text: 'Feedback'),
                GButton(icon: Icons.person_2, text: 'Profile'),
              ],
            ),
          ),
        ));
  }
}
