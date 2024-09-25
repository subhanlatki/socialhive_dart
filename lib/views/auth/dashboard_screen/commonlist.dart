import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class List extends StatelessWidget {
  final String heading1;
  final IconData iconData;
  const List({
    required this.heading1,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Icon(
            iconData,
           
            color: Colors.pink, 
          ),
          SizedBox(width: 13), 
          Text(
            heading1,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      dense: false,
      selected: false,
      selectedColor: Colors.black,
    );
  }
}
