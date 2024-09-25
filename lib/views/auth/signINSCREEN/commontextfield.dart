import 'package:flutter/material.dart';

class CommonTextfield extends StatelessWidget {
  final String hintText;
  final TextInputType inputType;
  final bool obscuretext;
  final Color color;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final IconData iconData;

  const CommonTextfield({
    Key? key, // Add key parameter to the constructor
    required this.color,
    required this.hintText,
    required this.inputType,
    required this.obscuretext,
    required this.iconData, required this.controller,
    required this.validator,
  }) : super(key: key); // Pass key to the superclass constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 340,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscuretext,
        keyboardType: inputType,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xFF5B30A0),
            fontWeight: FontWeight.bold,
          ),
          prefixIcon: Icon(
            iconData,
            color: Color(0xFF5B30A0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),

          ),
          contentPadding: EdgeInsets.symmetric(vertical: 20.0), // Adjust the padding to fit the container
        ),
      ),
    );
  }
}
