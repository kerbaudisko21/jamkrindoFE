import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jakrindo/login_page.dart';
import 'dart:convert';
import 'config.dart' as SETTING;

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

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

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  Future<void> register() async {
    final String name = nameController.text;
    final String password = passwordController.text;
    final String email = emailController.text;
    
    final response = await http.post(
      Uri.parse(SETTING.url + "/auth/register"),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(
        <String, String>{
          'name': name,
          'password': password,
          'email': email,
        },
      ),
    );

    if (response.statusCode == 200) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    } else {
      if (name.isEmpty) {
        showFlashError(context, "Please input the name field");
      }

      if (email.isEmpty) {
        showFlashError(context, "Please input the email field");
      }

      if (password.isEmpty) {
        showFlashError(context, "Please input the password field");
      }
    }
  }

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.black87,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 60),
              Text(
                'Register',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 29),
              Image.asset(
                'assets/LOGO PT JAMKRINDO.png',
                width: 300,
                height: 100,
              ),
              SizedBox(height: 29),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        15.0), // Increase the radius for more rounded corners
                    color: Colors.grey[300], // Grey background color
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    controller: nameController,
                    style: TextStyle(
                        fontSize: 16, color: Colors.black), // Text style
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Name',
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16), // Padding
                      labelStyle:
                          TextStyle(color: Colors.grey), // Label text style
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        15.0), // Increase the radius for more rounded corners
                    color: Colors.grey[300], // Grey background color
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    controller: emailController,
                    style: TextStyle(
                        fontSize: 16, color: Colors.black), // Text style
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Email',
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16), // Padding
                      labelStyle:
                          TextStyle(color: Colors.grey), // Label text style
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        15.0), // Increase the radius for more rounded corners
                    color: Colors.grey[300], // Grey background color
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    style: TextStyle(
                        fontSize: 16, color: Colors.black), // Text style
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Password',
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16), // Padding
                      labelStyle:
                          TextStyle(color: Colors.grey), // Label text style
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(11, 83, 158, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: Size.fromHeight(50),
                  ),
                  onPressed: () => register(),
                  child: Text(
                    "Register",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: MaterialButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      )
                    },
                    child: Text("Already have an account? Log in",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 2, 77, 138),
                            fontSize: 15)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
