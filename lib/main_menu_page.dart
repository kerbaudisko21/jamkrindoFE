import 'package:flutter/material.dart';

class MainMenuPage extends StatefulWidget {
  const MainMenuPage({super.key});

  @override
  State<MainMenuPage> createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
children: [
        Container(
          width: 375,
          height: 1409,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFFAFAFA)),
          child: Stack(
            children: [
              Positioned(
                left: 22,
                top: 38,
                child: Container(
                  width: 190,
                  height: 63,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 32,
                        top: 12,
                        child: SizedBox(
                          width: 158,
                          height: 39,
                          child: Text(
                            'Halo, ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 63,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE7E7E7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 23,
                top: 1209,
                child: Container(
                  width: 330,
                  height: 183,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 16.78,
                        top: 37.60,
                        child: Opacity(
                          opacity: 0.20,
                          child: Container(
                            width: 288.98,
                            height: 145.40,
                            decoration: ShapeDecoration(
                              color: Color(0xFF0B539E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 330,
                          height: 156.68,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-1.00, -0.03),
                              end: Alignment(1, 0.03),
                              colors: [Color(0xFF0B539E), Color(0xFF78AFE8)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Stack(children: [
                          ]),
                        ),
                      ),
                      Positioned(
                        left: 150,
                        top: 52,
                        child: SizedBox(
                          width: 158,
                          height: 52.44,
                          child: Text(
                            'Score',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 1218,
                child: Container(
                  width: 138,
                  height: 138,
                  child: Image.asset(
                    'assets/award_ribbon_check_mark_with_starss.png',
                    width: 138,
                    height: 138,
                  ),
                ),
              ),
              Positioned(
                left: 23,
                top: 1009,
                child: Container(
                  width: 330,
                  height: 183,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 16.78,
                        top: 37.60,
                        child: Opacity(
                          opacity: 0.20,
                          child: Container(
                            width: 288.98,
                            height: 145.40,
                            decoration: ShapeDecoration(
                              color: Color(0xFF0B539E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 330,
                          height: 156.68,
                          padding: const EdgeInsets.only(right: 162),
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-1.00, -0.03),
                              end: Alignment(1, 0.03),
                              colors: [Color(0xFF0B539E), Color(0xFF78AFE8)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 168,
                                height: 168,
                                child: Image.asset(
                                  'assets/209437991.png',
                                  width: 168,
                                  height: 168,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 156,
                        top: 58,
                        child: SizedBox(
                          width: 158,
                          height: 52.44,
                          child: Text(
                            'Dashboard',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 23,
                top: 809,
                child: Container(
                  width: 330,
                  height: 183,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 16.78,
                        top: 37.60,
                        child: Opacity(
                          opacity: 0.20,
                          child: Container(
                            width: 288.98,
                            height: 145.40,
                            decoration: ShapeDecoration(
                              color: Color(0xFF0B539E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 330,
                          height: 156.68,
                          padding: const EdgeInsets.only(
                            top: 39,
                            left: 13,
                            right: 186,
                            bottom: 30.68,
                          ),
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-1.00, -0.03),
                              end: Alignment(1, 0.03),
                              colors: [Color(0xFF0B539E), Color(0xFF78AFE8)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 131,
                                height: 87,
                                child: Image.asset(
                                  'assets/poor_to_good_progress_meterr.png',
                                  width: 131,
                                  height: 87,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 150,
                        top: 52,
                        child: SizedBox(
                          width: 158,
                          height: 52.44,
                          child: Text(
                            'Progress',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 23,
                top: 609,
                child: Container(
                  width: 330,
                  height: 183,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 16.78,
                        top: 37.60,
                        child: Opacity(
                          opacity: 0.20,
                          child: Container(
                            width: 288.98,
                            height: 145.40,
                            decoration: ShapeDecoration(
                              color: Color(0xFF0B539E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 330,
                          height: 156.68,
                          padding: const EdgeInsets.only(right: 176, bottom: 2.68),
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-1.00, -0.03),
                              end: Alignment(1, 0.03),
                              colors: [Color(0xFF0B539E), Color(0xFF78AFE8)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 154,
                                height: 154,
                                child: Image.asset(
                                  'assets/84314991.png',
                                  width: 154,
                                  height: 154,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 150,
                        top: 52,
                        child: SizedBox(
                          width: 158,
                          height: 52.44,
                          child: Text(
                            'Collab',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 23,
                top: 409,
                child: Container(
                  width: 330,
                  height: 183,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 16.78,
                        top: 37.60,
                        child: Opacity(
                          opacity: 0.20,
                          child: Container(
                            width: 288.98,
                            height: 145.40,
                            decoration: ShapeDecoration(
                              color: Color(0xFF0B539E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 330,
                          height: 156.68,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-1.00, -0.03),
                              end: Alignment(1, 0.03),
                              colors: [Color(0xFF0B539E), Color(0xFF78AFE8)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Stack(children: [
                          ]),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 19,
                        child: Container(
                          width: 137,
                          height: 117,
                          child: Image.asset(
                            'assets/58971.png',
                            width: 137,
                            height: 117,
                         ),
                        ),
                      ),
                      Positioned(
                        left: 150,
                        top: 52,
                        child: SizedBox(
                          width: 158,
                          height: 52.44,
                          child: Text(
                            'Mission',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 23,
                top: 209,
                child: Container(
                  width: 330,
                  height: 183,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 16.78,
                        top: 37.60,
                        child: Opacity(
                          opacity: 0.20,
                          child: Container(
                            width: 288.98,
                            height: 145.40,
                            decoration: ShapeDecoration(
                              color: Color(0xFF0B539E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 330,
                          height: 156.68,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-1.00, -0.03),
                              end: Alignment(1, 0.03),
                              colors: [Color(0xFF0B539E), Color(0xFF78AFE8)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Stack(children: [
                          ]),
                        ),
                      ),
                      Positioned(
                        left: 150,
                        top: 52,
                        child: SizedBox(
                          width: 158,
                          height: 52.44,
                          child: Text(
                            'Curhatan',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 32,
                        top: 12,
                        child: Container(
                          width: 114,
                          height: 147,
                          child: Image.asset(
                            'assets/69606791.png',
                            width: 114,
                            height: 147,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 80,
                top: 125,
                child: Container(
                  width: 216,
                  height: 66,
                  child: Image.asset(
                    'assets/LOGO PT JAMKRINDO.png',
                    width: 216,
                    height: 66,
                  ),
                ),
              ),
              Positioned(
                left: 67,
                top: 41,
                child: Container(
                  width: 13,
                  height: 13,
                  decoration: ShapeDecoration(
                    color: Color(0xFF0B539E),
                    shape: OvalBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
