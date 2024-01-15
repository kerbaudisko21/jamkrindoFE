import 'package:flutter/material.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({super.key});

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
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
                                    left: 108,
                                    top: 0,
                                    child: Text(
                                        'Progress',
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
                    left: 130,
                    top: 143,
                    child: Container(
                        width: 117,
                        height: 40,
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                        decoration: ShapeDecoration(
                            color: Color(0xFF0B539E),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                            ),
                        ),
                    ),
                ),
                Positioned(
                    left: 50,
                    top: 154,
                    child: Opacity(
                        opacity: 0.50,
                        child: Text(
                            '10',
                            style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                height: 0,
                            ),
                        ),
                    ),
                ),
                Positioned(
                    left: 95.22,
                    top: 154,
                    child: Opacity(
                        opacity: 0.50,
                        child: Text(
                            '11',
                            style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                height: 0,
                            ),
                        ),
                    ),
                ),
                Positioned(
                    left: 137,
                    top: 154,
                    child: Text(
                        'Today, 12 Nov',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
                ),
                Positioned(
                    left: 271,
                    top: 154,
                    child: Opacity(
                        opacity: 0.50,
                        child: Text(
                            '13',
                            style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                height: 0,
                            ),
                        ),
                    ),
                ),
                Positioned(
                    left: 316.22,
                    top: 154,
                    child: Opacity(
                        opacity: 0.50,
                        child: Text(
                            '14',
                            style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                height: 0,
                            ),
                        ),
                    ),
                ),
                Positioned(
                    left: 23,
                    top: 209,
                    child: Container(
                        width: 330,
                        height: 130,
                        child: Stack(
                            children: [
                                Positioned(
                                    left: 0,
                                    top: 0,
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
                                                        ,
                                                        ]),
                                                    ),
                                                ),
                                                Positioned(
                                                    left: 125,
                                                    top: 28,
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
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 27,
                                    top: 25,
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
                            ],
                        ),
                    ),
                ),
                Positioned(
                    left: 23,
                    top: 339,
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
                                        ,
                                        ]),
                                    ),
                                ),
                                Positioned(
                                    left: 125,
                                    top: 28,
                                    child: Text.rich(
                                        TextSpan(
                                            children: [
                                                TextSpan(
                                                    text: 'Andy\n',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 24,
                                                        fontFamily: 'Inter',
                                                        fontWeight: FontWeight.w700,
                                                        height: 0,
                                                    ),
                                                ),
                                                TextSpan(
                                                    text: 'Staff Subrogasi',
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
                                    ),
                                ),
                            ],
                        ),
                    ),
                ),
                Positioned(
                    left: 50,
                    top: 364,
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
                                                Positioned(
                                                    left: -50,
                                                    top: -44,
                                                    child: Container(
                                                        width: 169,
                                                        height: 254,
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: NetworkImage("https://via.placeholder.com/169x254"),
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
            ],
        ),
    );
  }
}
