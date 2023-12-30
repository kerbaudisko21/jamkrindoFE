import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jakrindo/login_page.dart';
import 'package:jakrindo/update_profile_page.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late SharedPreferences currUserData;
  String email = '';
  String name = '';

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    currUserData = await SharedPreferences.getInstance();
    setState(() {
      email = currUserData.getString('email') ?? '';
      name = currUserData.getString('name') ?? '';
    });
  }

  void logout() async {
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
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Container(
            padding: const EdgeInsets.all(40),
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
                        child: const Icon(
                          LineAwesomeIcons.alternate_pencil,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(name, style: Theme.of(context).textTheme.headline4),
                Text(email, style: Theme.of(context).textTheme.bodyText2),
                const SizedBox(height: 20),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => UpdateProfilePage());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        side: BorderSide.none,
                        shape: const StadiumBorder()),
                    child: const Text('Edit Profile',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
                const SizedBox(height: 30),
                const Divider(),
                const SizedBox(height: 10),
                ProfileMenuWidget(
                  title: "Log out",
                  icon: LineAwesomeIcons.alternate_sign_out,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: () => logout(),
                )
              ],
            )),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          // color: iconColor.withOpacity(0.1),
        ),
        child: Icon(icon),
      ),
      title: Text(title,
          style:
              Theme.of(context).textTheme.bodyText1?.apply(color: textColor)),
      trailing: endIcon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: const Icon(LineAwesomeIcons.angle_right,
                  size: 18.0, color: Colors.grey))
          : null,
    );
  }
}
