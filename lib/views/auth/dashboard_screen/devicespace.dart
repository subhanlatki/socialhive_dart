


import 'package:flutter/material.dart';


class Devicespace extends StatelessWidget {
  const Devicespace ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              CustomPaint(
                size: Size(45, 45),
                painter: LogoPainter(),
              ),
              SizedBox(width: 8),
              Text(
                'SocialHive',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF5B30A0), 
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.blue,
        body: 
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(top: 25,left: 20),
                 child: Text('Device Space Information',style: TextStyle(color: Colors.white,fontSize: 20),),
               ),
             ],
           )
          
    );
  }
}

class LogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..style = PaintingStyle.fill;
  
    paint.color = Color(0xFF5B30A0); 
    canvas.drawArc(
      Rect.fromLTWH(22, 3, size.width / 2, size.height / 2),
      3.1 / 2, 
      4.9, 
      true, 
      paint,
    );

    
    paint.color = Color(0xFFFC4482); 
    canvas.drawArc(
      Rect.fromLTWH(size.width / 2, size.height / 3, size.width / 2, size.height / 2),
      -3.2 / 2, 
      4.9, 
      true, 
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
