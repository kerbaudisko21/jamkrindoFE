import 'package:flutter/material.dart';

class CollabPage extends StatefulWidget {
  const CollabPage({super.key});

  @override
  State<CollabPage> createState() => _CollabPageState();
}

class _CollabPageState extends State<CollabPage> {
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
                                  left: 127,
                                  top: 0,
                                  child: Text(
                                      'Collab',
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
                  top: 216,
                  child: Container(
                      width: 343,
                      height: 50,
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          
                          ],
                      ),
                  ),
              ),
              Positioned(
                  left: 60,
                  top: 372,
                  child: Container(
                      width: 256,
                      height: 256,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/256x256"),
                              fit: BoxFit.fill,
                          ),
                      ),
                  ),
              ),
              Positioned(
                  left: 16,
                  top: 216,
                  child: Container(
                      width: 343,
                      height: 50,
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          
                          ],
                      ),
                  ),
              ),
              Positioned(
                  left: 167,
                  top: 233,
                  child: Text(
                      'Divisi',
                      style: TextStyle(
                          color: Color(0xFFBDBDBD),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                      ),
                  ),
              ),
              Positioned(
                  left: 167,
                  top: 232,
                  child: Text(
                      'Divisi',
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
                  left: 317,
                  top: 227,
                  child: Container(
                      width: 28,
                      height: 28,
                      child: Stack(
                          children: [
                              Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                      width: 28,
                                      height: 28,
                                      decoration: ShapeDecoration(
                                          color: Color(0xFF0B539E),
                                          shape: OvalBorder(),
                                      ),
                                  ),
                              ),
                              Positioned(
                                  left: 12,
                                  top: 7,
                                  child: Container(
                                      width: 4,
                                      height: 14,
                                      decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                                      ),
                                  ),
                              ),
                              Positioned(
                                  left: 7,
                                  top: 16,
                                  child: Transform(
                                      transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-1.57),
                                      child: Container(
                                          width: 4,
                                          height: 14,
                                          decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
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
                  top: 657,
                  child: Container(
                      height: 51,
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      decoration: ShapeDecoration(
                          color: Color(0xFF0B539E),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                          ),
                      ),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                              Text(
                                  'Submit',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                  ),
                              ),
                          ],
                      ),
                  ),
              ),
              Positioned(
                  left: 16,
                  top: 150,
                  child: Container(
                      width: 343,
                      height: 50,
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          
                          ],
                      ),
                  ),
              ),
              Positioned(
                  left: 16,
                  top: 150,
                  child: Container(
                      width: 343,
                      height: 50,
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          
                          ],
                      ),
                  ),
              ),
              Positioned(
                  left: 120,
                  top: 166,
                  child: Text(
                      'Teman Kolaborasi',
                      style: TextStyle(
                          color: Color(0xFFBDBDBD),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                      ),
                  ),
              ),
              Positioned(
                  left: 118,
                  top: 166,
                  child: Text(
                      'Teman Kolaborasi',
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
                  left: 317,
                  top: 161,
                  child: Container(
                      width: 28,
                      height: 28,
                      child: Stack(
                          children: [
                              Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                      width: 28,
                                      height: 28,
                                      decoration: ShapeDecoration(
                                          color: Color(0xFF0B539E),
                                          shape: OvalBorder(),
                                      ),
                                  ),
                              ),
                              Positioned(
                                  left: 12,
                                  top: 7,
                                  child: Container(
                                      width: 4,
                                      height: 14,
                                      decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                                      ),
                                  ),
                              ),
                              Positioned(
                                  left: 7,
                                  top: 16,
                                  child: Transform(
                                      transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-1.57),
                                      child: Container(
                                          width: 4,
                                          height: 14,
                                          decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
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
    );
  }
}

