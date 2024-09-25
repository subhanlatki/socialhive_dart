import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Commoncontainer_dashboard extends StatelessWidget {
      final IconData iconData;
      final String text;
      final Color color;
    
  const Commoncontainer_dashboard({
    required this.iconData,
      required this.text,
      required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return    Container( 
                                      height: 70,
                                      width: 170,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                   color: Colors.white,
                                      boxShadow: [
                                         BoxShadow( 
                                         blurRadius: 0.1,
                                            offset: Offset(0, 1.0)
                                         ),
                                      ]
                                      ),
                                      child:   
                                        Row( 
                                            children: [  
                                              Padding(
                                                padding: const EdgeInsets.only(left: 20),
                                                child: Icon(iconData,color: color,size: 25),
                                              ),
                                              SizedBox(
                                                width: 13,
                                              ),
                                              Text(text,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)
                                            ],
                                        ),
                                    );
                                  
  
  }
}