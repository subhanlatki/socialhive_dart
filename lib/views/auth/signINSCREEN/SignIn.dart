import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:socialhive_dart/views/auth/signINSCREEN/forget.dart';


import 'package:socialhive_dart/views/auth/signINSCREEN/prfile%20setup.dart';
import 'package:socialhive_dart/views/auth/signINSCREEN/signup.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
            padding: const EdgeInsets.only(left: 47, top: 35),
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
          SizedBox(height: 55),
          Text(
            'Sign in to SocialHive',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xFF5B30A0),
            ),
          ),
          Text(
            'to connect with',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xFF5B30A0),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 25),
              // CommonTextfield(
              //   color: Colors.white.withOpacity(0.2),
              //   hintText: 'Email',
              //   inputType: TextInputType.emailAddress,
              //   obscuretext: false,
              //   iconData: Icons.email_outlined,
              // ),
              // SizedBox(height: 18),
              // CommonTextfield(
              //   color: Colors.white.withOpacity(0.2),
              //   hintText: 'Password',
              //   inputType: TextInputType.text,
              //   obscuretext: true,
              //   iconData: Icons.password,
              // ),
              SizedBox(height: 30),
              RoundedLoadingButton(
                color: Color(0xFF5B30A0),
                child: Text('Sign In', style: TextStyle(color: Colors.white, fontSize: 25)),
                controller: _btnController,
                onPressed: (){
                  Navigator.push(context,  MaterialPageRoute(builder: (context)=> Prfilesetup()));
                },
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 35),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordScreen()));
                  },
                  child: Text(
                    'Forget Password',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5B30A0),
                    ),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 105, top: 80),
                    child: Text(
                      'Don\'t have an account?',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 11),
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF5B30A0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
