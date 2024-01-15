import 'package:flutter/material.dart';

class DashPage extends StatefulWidget {
  const DashPage({super.key});

  @override
  State<DashPage> createState() => _DashPageState();
}

class _DashPageState extends State<DashPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
        height: 812,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
            children: [
                Positioned(
                    left: 16,
                    top: 60,
                    child: Container(
                        width: 343,
                        height: 36,
                        child: Stack(
                            children: [
                                Positioned(
                                    left: 94,
                                    top: 0,
                                    child: Text(
                                        'Dashboard',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 30,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: -0.31,
                                    top: 16,
                                    child: Transform(
                                        transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.79),
                                        child: Container(
                                            width: 16,
                                            height: 16,
                                            child: Stack(
                                                children: [
                                                    Positioned(
                                                        left: 6.36,
                                                        top: 6.36,
                                                        child: Transform(
                                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.79),
                                                            child: Container(
                                                                width: 16.60,
                                                                decoration: ShapeDecoration(
                                                                    shape: RoundedRectangleBorder(
                                                                        side: BorderSide(
                                                                            width: 2,
                                                                            strokeAlign: BorderSide.strokeAlignCenter,
                                                                            color: Color(0xFFBDBDBD),
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 17.68,
                                                        top: 4.95,
                                                        child: Transform(
                                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-2.36),
                                                            child: Container(
                                                                width: 16.60,
                                                                decoration: ShapeDecoration(
                                                                    shape: RoundedRectangleBorder(
                                                                        side: BorderSide(
                                                                            width: 2,
                                                                            strokeAlign: BorderSide.strokeAlignCenter,
                                                                            color: Color(0xFFBDBDBD),
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                    ),
                                ),
                            ],
                        ),
                    ),
                ),
                Positioned(
                    left: 16,
                    top: 207,
                    child: Container(
                        width: 343,
                        height: 50,
                        child: Stack(
                            children: [
                                Positioned(
                                    left: 16,
                                    top: 16,
                                    child: Text(
                                        'Search',
                                        style: TextStyle(
                                            color: Color(0xFFBDBDBD),
                                            fontSize: 16,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                        ),
                                    ),
                                ),
                            ],
                        ),
                    ),
                ),
                Positioned(
                    left: 41,
                    top: 283,
                    child: Container(
                        width: 293,
                        height: 78,
                        child: SizedBox(),
                    ),
                ),
                Positioned(
                    left: 41,
                    top: 283,
                    child: Container(
                        width: 293,
                        height: 78,
                        child: SizedBox(),
                    ),
                ),
                Positioned(
                    left: 49,
                    top: 291,
                    child: Container(
                        width: 277,
                        height: 63,
                        child: Stack(
                            children: [
                                Positioned(
                                    left: 96,
                                    top: 3,
                                    child: Text.rich(
                                        TextSpan(
                                            children: [
                                                TextSpan(
                                                    text: 'Selly\n',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 24,
                                                        fontFamily: 'Inter',
                                                        fontWeight: FontWeight.w700,
                                                        height: 0,
                                                    ),
                                                ),
                                                TextSpan(
                                                    text: 'Staff Klaim',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontFamily: 'Inter',
                                                        fontWeight: FontWeight.w700,
                                                        height: 0,
                                                    ),
                                                ),
                                            ],
                                        ),
                                        textAlign: TextAlign.center,
                                    ),
                                ),
                                Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                        width: 63,
                                        height: 63,
                                        child: Stack(
                                            children: [
                                                Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: Container(
                                                        width: 63,
                                                        height: 63,
                                                        child: Stack(
                                                            children: [
                                                                Positioned(
                                                                    left: 0,
                                                                    top: 0,
                                                                    child: Container(
                                                                        width: 63,
                                                                        height: 63,
                                                                        decoration: ShapeDecoration(
                                                                            color: Color(0xFFC4C4C4),
                                                                            shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(1000),
                                                                            ),
                                                                        ),
                                                                    ),
                                                                ),
                                                                Positioned(
                                                                    left: 0,
                                                                    top: -5,
                                                                    child: Container(
                                                                        width: 67,
                                                                        height: 100,
                                                                        decoration: BoxDecoration(
                                                                            image: DecorationImage(
                                                                                image: NetworkImage("https://via.placeholder.com/67x100"),
                                                                                fit: BoxFit.fill,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                ),
                                                            ],
                                                        ),
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 228,
                                    top: 9,
                                    child: Text(
                                        '11\nNov',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xFF0B539E),
                                            fontSize: 18,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                        ),
                                    ),
                                ),
                            ],
                        ),
                    ),
                ),
                Positioned(
                    left: 23,
                    top: 380,
                    child: Container(
                        width: 330,
                        height: 130,
                        child: Stack(
                            children: [
                                Positioned(
                                    left: 16.78,
                                    top: 26.71,
                                    child: Opacity(
                                        opacity: 0.20,
                                        child: Container(
                                            width: 288.98,
                                            height: 103.29,
                                            decoration: ShapeDecoration(
                                                color: Color(0xFF0B539E),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(50),
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
                                        height: 111.30,
                                        decoration: ShapeDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment(-1.00, -0.03),
                                                end: Alignment(1, 0.03),
                                                colors: [Color(0xFF0B539E), Color(0xFF78AFE8)],
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(50),
                                            ),
                                        ),
                                        child: Stack(children: [
                                        
                                        ]),
                                    ),
                                ),
                                Positioned(
                                    left: 114,
                                    top: 63,
                                    child: Text(
                                        'Bank',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 114,
                                    top: 47,
                                    child: Container(
                                        width: 194,
                                        height: 15,
                                        child: Stack(children: [
                                        
                                        ]),
                                    ),
                                ),
                                Positioned(
                                    left: 114,
                                    top: 47,
                                    child: Container(
                                        width: 158,
                                        height: 15,
                                        child: Stack(children: [
                                        
                                        ]),
                                    ),
                                ),
                                Positioned(
                                    left: 137,
                                    top: 24,
                                    child: Text(
                                        '5 / 6 Uker  (Harian)',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                        ),
                                    ),
                                ),
                            ],
                        ),
                    ),
                ),
                Positioned(
                    left: 23,
                    top: 613,
                    child: Container(
                        width: 330,
                        height: 130,
                        child: Stack(
                            children: [
                                Positioned(
                                    left: 16.78,
                                    top: 26.71,
                                    child: Opacity(
                                        opacity: 0.20,
                                        child: Container(
                                            width: 288.98,
                                            height: 103.29,
                                            decoration: ShapeDecoration(
                                                color: Color(0xFF0B539E),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(50),
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
                                        height: 111.30,
                                        decoration: ShapeDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment(-1.00, -0.03),
                                                end: Alignment(1, 0.03),
                                                colors: [Color(0xFF0B539E), Color(0xFF78AFE8)],
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(50),
                                            ),
                                        ),
                                        child: Stack(children: [
                                        
                                        ]),
                                    ),
                                ),
                                Positioned(
                                    left: 114,
                                    top: 63,
                                    child: Text(
                                        'Kontraktor',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 114,
                                    top: 47,
                                    child: Container(
                                        width: 194,
                                        height: 15,
                                        child: Stack(children: [
                                        
                                        ]),
                                    ),
                                ),
                                Positioned(
                                    left: 114,
                                    top: 47,
                                    child: Container(
                                        width: 136,
                                        height: 15,
                                        child: Stack(children: [
                                        
                                        ]),
                                    ),
                                ),
                                Positioned(
                                    left: 137,
                                    top: 24,
                                    child: Text(
                                        '2 / 3 Orang (Harian)',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 21,
                                    top: 16,
                                    child: Container(
                                        width: 76,
                                        height: 76,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage("https://via.placeholder.com/76x76"),
                                                fit: BoxFit.fill,
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
                    top: 496,
                    child: Container(
                        width: 330,
                        height: 130,
                        child: Stack(
                            children: [
                                Positioned(
                                    left: 16.78,
                                    top: 26.71,
                                    child: Opacity(
                                        opacity: 0.20,
                                        child: Container(
                                            width: 288.98,
                                            height: 103.29,
                                            decoration: ShapeDecoration(
                                                color: Color(0xFF0B539E),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(50),
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
                                        height: 111.30,
                                        decoration: ShapeDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment(-1.00, -0.03),
                                                end: Alignment(1, 0.03),
                                                colors: [Color(0xFF0B539E), Color(0xFF78AFE8)],
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(50),
                                            ),
                                        ),
                                        child: Stack(children: [
                                        
                                        ]),
                                    ),
                                ),
                                Positioned(
                                    left: 114,
                                    top: 63,
                                    child: Text(
                                        'Dinas',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 114,
                                    top: 47,
                                    child: Container(
                                        width: 194,
                                        height: 15,
                                        child: Stack(children: [
                                        
                                        ]),
                                    ),
                                ),
                                Positioned(
                                    left: 114,
                                    top: 47,
                                    child: Container(
                                        width: 79,
                                        height: 15,
                                        child: Stack(children: [
                                        ]),
                                    ),
                                ),
                                Positioned(
                                    left: 137,
                                    top: 24,
                                    child: Text(
                                        '2 / 5 Dinas  (Harian)',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                        ),
                                    ),
                                ),
                            ],
                        ),
                    ),
                ),
                Positioned(
                    left: 26,
                    top: 380,
                    child: Container(
                        width: 111,
                        height: 110,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage("https://via.placeholder.com/111x110"),
                                fit: BoxFit.fill,
                            ),
                        ),
                    ),
                ),
                Positioned(
                    left: 48,
                    top: 490,
                    child: Container(
                        width: 119,
                        height: 119,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage("https://via.placeholder.com/119x119"),
                                fit: BoxFit.fill,
                            ),
                        ),
                    ),
                ),
            ],
        ),
    );
  }
}

