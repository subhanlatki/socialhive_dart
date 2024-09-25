

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:socialhive_dart/views/auth/bottom.dart/bottom_screen.dart';


class Prfilesetup extends StatefulWidget {
  const Prfilesetup({super.key});

  @override
  State<Prfilesetup> createState() => _PrfilesetupState();
}

class _PrfilesetupState extends State<Prfilesetup> {
final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();

void _doSomething() async {
    Timer(Duration(seconds: 3), () {
        _btnController.success();
    });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 20),
            child: Row(
              children: [
                CustomPaint(
                  size: Size(80, 80),
                  painter: LogoPainter(),
                ),
                SizedBox(width: 5),
                Text(
                  'SocialHive',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF5B30A0), 
                  ),
                ),
              ],
            ),
          ),
            Padding(
        padding: const EdgeInsets.only(),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
              Container(
            width: double.infinity, 
            color: Color(0xFF5B30A0),
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: Text(
                'Prfile Setup',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
            SizedBox(height: 25),
            CircleAvatar(
              radius: 55,
              backgroundColor: Color(0xFF5B30A0),
              child: Icon(
                Icons.add,
                color: Colors.black,
                size: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(45.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Your Name',
                      labelStyle: TextStyle(color: Color(0xFF5B30A0),fontWeight: FontWeight.bold),
                      prefixIcon: Icon(Icons.person_off_outlined,color: Color(0xFF5B30A0),),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
              TextField(
               
                decoration: InputDecoration(
                  labelText: 'User Name',
                  labelStyle: TextStyle(color: Color(0xFF5B30A0),fontWeight: FontWeight.bold),
                  prefixIcon: Icon(Icons.person_rounded,color: Color(0xFF5B30A0),),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 130),
                  child: Container(
                    height: 55,
                    width: 55,
                      decoration: BoxDecoration(
                         color: Colors.pink,
                        borderRadius: BorderRadius.circular(35)
                      ),
                    child: Center(
                      child: IconButton(
                        icon: Icon(Icons.male, color: Colors.white, size: 25),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                color: Color(0xFF5B30A0),
                     borderRadius: BorderRadius.circular(35)
                  ),
                  child: IconButton(
                    icon: Icon(Icons.female, color: Colors.white, size: 25),
                    onPressed: () {},
                  ),
                ),
                 
              ],
            ),
          ],
        ),
            ),
            SizedBox(height: 40,),
           RoundedLoadingButton(
            color:  Color(0xFF5B30A0),
    child: Text('Submet', style: TextStyle(color: Colors.white,fontSize: 20)),
    controller: _btnController,
    onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> bottomnavigation()));
    }
)
        ],
      
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
      Rect.fromLTWH(40, 7, size.width / 2, size.height / 2),
      3.1 / 2, // Start angle
      4.9, // Sweep angle
      true, // Use center
      paint,
    );

    // Draw the pink part of the logo
    paint.color = Color(0xFFFC4482); // Pink color
    canvas.drawArc(
      Rect.fromLTWH(size.width / 2, size.height / 3, size.width / 2, size.height / 2),
      -3.2 / 2, // Start angle
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
