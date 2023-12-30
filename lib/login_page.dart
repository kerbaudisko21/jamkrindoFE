import 'package:flutter/material.dart';
import 'package:jakrindo/dashboard_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'register_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'config.dart' as SETTING;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
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

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late SharedPreferences currUserData;
  late bool loginUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkLoginUser();
  }

  void checkLoginUser() async {
    currUserData = await SharedPreferences.getInstance();
    loginUser = (currUserData.getBool('login') ?? true);

    if (!loginUser) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DashboardPage(),
        ),
      );
    }
  }

  Future<void> login() async {
    final String email = emailController.text;
    final String password = passwordController.text;

    final response = await http.post(
      Uri.parse(SETTING.url + "/auth/login"),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(
        <String, String>{
          'email': email,
          'password': password,
        },
      ),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      currUserData.setString('id', data['details']['_id']);
      currUserData.setBool('login', false);
      currUserData.setString('email', data['details']['email']);
      currUserData.setString('name', data['details']['name']);
      currUserData.setString('password', data['notHashPassword']);
      currUserData.setString('hashPassword', data['password']);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DashboardPage(),
        ),
      );
    } else {
      showFlashError(context, 'Wrong email address or password.');
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
                'Login',
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
                  onPressed: () => login(),
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              TextButton(
                style: flatButtonStyle,
                onPressed: () {},
                child: Text('Forget Your Password',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 2, 77, 138),
                        fontSize: 15)),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: MaterialButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterPage(),
                        ),
                      )
                    },
                    child: Text("Create a new account? Click here",
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
