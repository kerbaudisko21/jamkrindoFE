import 'package:flutter/material.dart';
import 'package:jakrindo/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }

  void initial() async {
    final pref = await SharedPreferences.getInstance();
    pref.clear();

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        )); // <- n
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
