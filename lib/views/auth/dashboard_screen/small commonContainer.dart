import 'package:flutter/material.dart';

class Smallcommoncontainer extends StatelessWidget {
   final String Text1;
   final String Text2;
   final Color color;
  const Smallcommoncontainer({
    required this.Text1,
    required this.Text2,
     required this.color,
  });
  
  @override
  Widget build(BuildContext context) {
    return  Container( 
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),

    );
  }
} 