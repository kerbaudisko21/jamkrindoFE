import 'package:flutter/material.dart';

class CurhatPage extends StatefulWidget {
  const CurhatPage({super.key});

  @override
  State<CurhatPage> createState() => _CurhatPageState();
}

class _CurhatPageState extends State<CurhatPage> {
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
                                  left: 128,
                                  top: 0,
                                  child: Text(
                                      'Curhatan',
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
                                                                          color: Colors.grey,
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
                                                                          color: Colors.grey,
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
                  top: 150,
                  child: Container(
                      width: 343,
                      height: 50,
                      child: Stack(
                          children: [
                              Positioned(
                                  left: 16,
                                  top: 16,
                                  child: Text(
                                      'Curhatan & Komentar',
                                      style: TextStyle(
                                          color: Colors.grey,
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
                  left: 16,
                  top: 216,
                  child: Container(
                      width: 343,
                      height: 50,
                      child: Stack(
                          children: [
                              Positioned(
                                  left: 16,
                                  top: 16,
                                  child: Text(
                                      'Upload',
                                      style: TextStyle(
                                          color: Colors.grey,
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
                  left: 16,
                  top: 282,
                  child: Container(
                      width: 343,
                      height: 50,
                      child: Stack(
                          children: [
                              Positioned(
                                  left: 16,
                                  top: 16,
                                  child: Text(
                                      'Lokasi',
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
                  left: 156,
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
          ],
      ),
    );    
  }
}
