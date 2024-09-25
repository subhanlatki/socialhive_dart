import 'dart:async';

import 'package:flutter/material.dart';

import 'package:socialhive_dart/views/auth/signINSCREEN/signup.dart';




class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
    void initState() {
    // TODO: implement initState
    super.initState();
    
     Timer(Duration(seconds: 5), () { 
     Navigator.of(context).pushReplacement(
       MaterialPageRoute(
        builder: (context) => SignupScreen(),
       )
     );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                     CustomPaint(
              size: Size(80, 80),
              painter: LogoPainter(),
            ),
            SizedBox(width: 5,),
         
                Text(
                  'SocialHive',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF5B30A0), 
                  ),
                ),
                ],
            )
              ],
           
          
        ),
      ),
    );
  }
}
class LogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..style = PaintingStyle.fill; 

    // Draw the blue part of the logo
    paint.color = Color(0xFF5B30A0); // Blue color
    canvas.drawArc(
      Rect.fromLTWH(40, 7, size.width /2, size.height / 2),
      3.1 / 2, // Start angle
      4.9, // Sweep angle
      true, // Use center
      paint,
    );

    // Draw the pink part of the logo
    paint.color = Color(0xFFFC4482); // Pink color
    canvas.drawArc(
      Rect.fromLTWH(size.width / 2, size.height / 3, size.width / 2, size.height / 2),
      -3.2/ 2, // Start angle
      4.9, // Sweep angle
      true, // Use center
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

 