import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

import 'package:socialhive_dart/controller/signup_controller.dart';
import 'package:socialhive_dart/views/auth/bottom.dart/bottom_screen.dart';
import 'package:socialhive_dart/views/auth/signINSCREEN/SignIn.dart';
import 'package:socialhive_dart/views/auth/signINSCREEN/commontextfield.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final Signupservices = Get.put(SignupController());

  void _doSomething() async {
    Timer(Duration(seconds: 3), () {
      _btnController.success();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 47, top: 25),
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
              SizedBox(height: 30),
              Text(
                'Sign in to Trade Vista',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5B30A0),
                ),
              ),
              Text(
                'to connect with Your Partner',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5B30A0),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 15),
                  CommonTextfield(
                    color: Colors.grey,
                    hintText: 'Email',
                    inputType: TextInputType.emailAddress,
                    obscuretext: false,
                    iconData: Icons.email,
                    controller: Signupservices.emailcontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!GetUtils.isEmail(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  CommonTextfield(
                    color: Colors.grey,
                    hintText: 'Password',
                    inputType: TextInputType.text,
                    obscuretext: true,
                    iconData: Icons.lock,
                    controller: Signupservices.passwordcontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters long';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  CommonTextfield(
                    color: Colors.grey,
                    hintText: 'Confirm Password',
                    inputType: TextInputType.text,
                    obscuretext: true,
                    iconData: Icons.lock,
                    controller: Signupservices.repasswordcontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      if (value != Signupservices.passwordcontroller.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  Obx(() {
                    if (Signupservices.isloding.value) {
                      _btnController.start();
                    } else {
                      _btnController.reset();
                    }

                    return RoundedLoadingButton(
                      color: Color(0xFF5B30A0),
                      child: Text('Signup', style: TextStyle(color: Colors.white, fontSize: 20)),
                      controller: _btnController,
                      onPressed: () async {
                        if (formkey.currentState!.validate()) {
                          _btnController.start();
                          try {
                            await Signupservices.registerUser();
                            if (!Signupservices.isloding.value) {
                              _btnController.success();
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => bottomnavigation()),
                              );
                            }
                          } catch (e) {
                            _btnController.error();
                          }
                        }
                      },
                    );
                  }),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 35),
                    child: Text(
                      'By registering you agree to our terms',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF5B30A0)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Text(
                  'and conditions',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF5B30A0)),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 90, top: 35),
                        child: Text(
                          'Already have an account?',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Text(
                              'Sign In',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF5B30A0)),
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
        ),
      ),
    );
  }
}

class LogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..style = PaintingStyle.fill;

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
