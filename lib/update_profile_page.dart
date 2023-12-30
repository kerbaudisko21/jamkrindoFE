import 'dart:convert';

import 'package:bcrypt/bcrypt.dart';
import 'package:flutter/material.dart';
import 'package:jakrindo/dashboard_page.dart';
import 'package:jakrindo/login_page.dart';
import 'package:jakrindo/profile_page.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'config.dart' as SETTING;

class UpdateProfilePage extends StatefulWidget {
  const UpdateProfilePage({super.key});

  @override
  State<UpdateProfilePage> createState() => _UpdateProfilePageState();
}

class _UpdateProfilePageState extends State<UpdateProfilePage> {
  late SharedPreferences currUserData;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController oldPasswordController = TextEditingController();

  void showFlashError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Container(
          height: 30, // Adjust the height as needed
          child: Row(
            children: [
              Icon(Icons.error, color: Colors.white),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  message,
                  style: TextStyle(color: Colors.white),
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.blue,
        duration: Duration(seconds: 3),
        action: SnackBarAction(
          label: 'Dismiss',
          textColor: Colors.white,
          backgroundColor: Colors.black,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  void updateUser() async {
    currUserData = await SharedPreferences.getInstance();
    final userId = currUserData.getString('id');
    final email = emailController.text.isNotEmpty
        ? emailController.text
        : currUserData.getString('email');
    final password = passwordController.text.isNotEmpty
        ? BCrypt.hashpw(passwordController.text, BCrypt.gensalt(logRounds: 10))
        : currUserData.getString('hashPassword');
    final oldPassword = oldPasswordController.text;
    final name = nameController.text.isNotEmpty
        ? nameController.text
        : currUserData.getString('name');
    final updatedUserData = <String, String>{};

    if (oldPassword != currUserData.getString('password')) {
      showFlashError(context, 'You input the wrong password!');
    }

    if (email != null) {
      updatedUserData['email'] = email;
    }

    if (password != null) {
      updatedUserData['password'] = password;
    }

    if (name != null) {
      updatedUserData['name'] = name;
    }

    final response = await http.put(
      Uri.parse(SETTING.url + "/user/${userId}"),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(updatedUserData),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      if (updatedUserData['email'] != null) {
        currUserData.remove('email');
        currUserData.setString('email', data['email']);
      }

      if (data['name'] != null) {
        currUserData.remove('name');
        currUserData.setString('name', data['name']);
      }

      if (passwordController.text.isNotEmpty) { //ganti pass lgsg logout
        currUserData.clear();
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ));
      }

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UpdateProfilePage(),
        ),
      );
    } else {
      showFlashError(context, 'Wrong email address or password.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(
                            image: AssetImage('assets/profile.jpeg'))),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blueAccent),
                      child: const Icon(LineAwesomeIcons.camera,
                          color: Colors.black, size: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Full Name'),
                          prefixIcon: Icon(LineAwesomeIcons.user)),
                    ),
                    const SizedBox(height: 40),
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Email'),
                          prefixIcon: Icon(LineAwesomeIcons.envelope_1)),
                    ),
                    const SizedBox(height: 40),
                    TextFormField(
                      controller: oldPasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: const Text('Old Password*'),
                        prefixIcon: const Icon(Icons.fingerprint),
                        suffixIcon: IconButton(
                            icon: const Icon(LineAwesomeIcons.eye_slash),
                            onPressed: () {}),
                      ),
                    ),
                    const SizedBox(height: 40),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: const Text('Password'),
                        prefixIcon: const Icon(Icons.fingerprint),
                        suffixIcon: IconButton(
                            icon: const Icon(LineAwesomeIcons.eye_slash),
                            onPressed: () {}),
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => updateUser(),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            side: BorderSide.none,
                            shape: const StadiumBorder()),
                        child: const Text('Edit Profile',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
