

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:socialhive_dart/views/auth/bottom.dart/bottom_screen.dart';

import 'package:socialhive_dart/views/auth/dashboard_screen/commonContainer.dart';
import 'package:socialhive_dart/views/auth/dashboard_screen/commonlist.dart';
import 'package:socialhive_dart/views/auth/dashboard_screen/device_info.dart';

import 'package:socialhive_dart/views/auth/signINSCREEN/SignIn.dart';

class notification_important extends StatelessWidget {
  const notification_important ({super.key});

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
      drawer: Drawer(
     
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(left: 17, top: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                 InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> bottomnavigation()));
                  },
                   child: CircularProfileAvatar(
                      '',
                      backgroundColor: Color(0xFF5B30A0), 
                      borderColor: Colors.pink,
                      borderWidth: 1,
                      elevation: 20,
                      radius: 50,
                    ),
                 ),       
                    SizedBox(width: 13),
                    Column(
                      children: [
                        Text(
                          'Uzair Mushtaq',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Uzairmushtaq@gmail.com',
                          style: TextStyle(
                              color: Color(
                                0xFF5B30A0,
                              ),
                              fontSize: 13),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 25),
                  child: Container(
                    height: 44,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Color(0xFF5B30A0),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        'Premium',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 10,),
                List(heading1: 'Subscription', iconData: Icons.subscriptions),
                List(heading1: 'Setting', iconData: Icons.settings),
                List(heading1: 'Help', iconData: Icons.help_outline),
                List(heading1: 'Feedback', iconData: Icons.feedback),
                List(heading1: 'Tell other', iconData: Icons.person_3_outlined),
                List(heading1: 'Help', iconData: Icons.help_outline),
                List(heading1: 'Rate the app', iconData: Icons.share),
                SizedBox(
                  height: 45,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInScreen()));
                  },
                  child: List(heading1: 'Sign out', iconData: Icons.logout) 
                ),
                
              ],
            )
          ],
        ),
      ),
        body:  
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [ 
                    Padding(
                      padding: const EdgeInsets.only(left: 05,top: 5),
                      child: Text('DASHBOARD',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                    Row( 
                        children: [ 
                           Padding(
                             padding: const EdgeInsets.only(top: 10,left: 20),
                             child: Text('Your Friend',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF5B30A0,
                                  ),
                                  ),
                                  )
                           )
                        ],
                    ),
                    SizedBox(
                      height: 20,
                     ),
                    Column( 
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [ 
                            Container(
                              height: 200,
                              width: 340,
                              decoration: BoxDecoration( 
                                color: Colors.white,
                                boxShadow: [
                                    BoxShadow( 
                                        color: Colors.grey,
                                        blurRadius: 5,
                                        spreadRadius: 3,
                                        offset: Offset(0, 3)
                                    )
                                ]
                              ),
                              child:  
                                   Column( 
                                    children: [  
                                        Row( 
                                            children: [  
                                               Padding(
                                                 padding: const EdgeInsets.only(left: 25,top: 15),
                                                 child: CircularProfileAvatar(
                                                '',
                                          backgroundColor: Color(0xFF5B30A0), 
                                             borderColor: Colors.pink,
                                                   borderWidth: 1,
                                            elevation: 20,
                                             radius: 50,
                                          ),
                                               ), 
                                                SizedBox(width: 15),
                                                Flexible(child: 
                                                Column(children: [
                                                  Row(children: [
                                                    Icon(Icons.fiber_manual_record,color: Colors. green,),
                                                    SizedBox(width: 8,),
                                                    Text('Uzair Mushtaq',style: TextStyle(fontSize: 20),)
                                                  ],),
                                                  Row(children: [
                                                  Icon(Icons.location_on,color: Color(0xFF5B30A0),size: 35),
                                                  SizedBox(width: 10,),
                                                  Expanded(child: Text('Near Govermint Girls High School Sahja, Khanpur, Pakistan',
                                                  style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 0,),
                                                  )),
                                                  ],
                                                  )
                                                ],
                                                )
                                                ),
                                             
                                            ],
                                        ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 38,top: 22),
                                            child: Row(
                                              children: [
                                                Column( 
                                                       children: [ 
                                                         Text('Status',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                                         SizedBox(
                                                          height: 5,
                                                         ),
                                                          Text('Offline',style: TextStyle(fontSize: 17,color: Colors.pink,fontWeight: FontWeight.bold))
                                                       ],
                                                    ), 
                                                    SizedBox(width: 20,),
                                                  Container( 
                                                    height: 40,
                                                    width: 4,
                                                    color: Color(0xFF5B30A0), 
                                                  ) ,
                                                   Padding(
                                            padding: const EdgeInsets.only(left: 20,),
                                            child: Row(
                                              children: [
                                                Column( 
                                                       children: [ 
                                                         Text('User Status',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                                         SizedBox(
                                                          height: 5,
                                                         ),
                                                          Text('N/A',style: TextStyle(fontSize: 17,color: Colors.pink,fontWeight: FontWeight.bold))
                                                       ],
                                                    ), 
                                                    SizedBox(width: 20,),
                                                  Container( 
                                                    height: 40,
                                                    width: 4,
                                                    color: Color(0xFF5B30A0), 
                                                  ),
                                                   Padding(
                                            padding: const EdgeInsets.only(left: 15,),
                                            child: Row(
                                              children: [
                                                Column( 
                                                       children: [ 
                                                         Text('Mode',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                                         SizedBox(
                                                          height: 5,
                                                         ),
                                                          Text('N/A',style: TextStyle(fontSize: 17,color: Colors.pink,fontWeight: FontWeight.bold))
                                                       ],
                                                    ), 
                                                 
                                                  
                                              ],
                                            ),
                                          ),
                                              ],
                                            ),
                                          ),
                                          ],
                                            ),
                                          ),
                                          
                                           
                                    ],
                                   ),
                            ),
                           Column( 
                               children: [ 
                                SizedBox(
                                  height: 35,
                                ),
                                Row(
                                   mainAxisAlignment:  MainAxisAlignment.start,
                                   children: [ 
                                    Padding(
                                      padding: const EdgeInsets.only(left: 18),
                                      child: InkWell(
                                        onTap: () {
                                           Navigator.push(context, MaterialPageRoute(builder: (context)=> DeviceInfo_screen()));
                                        },
                                        child: Container( 
                                          height: 70,
                                          width: 115,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow( 
                                                 blurRadius: 2.1,
                                                 spreadRadius: 0.1,
                                                 offset: Offset(0 ,0.6)
                                              )
                                            ],
                                            gradient: LinearGradient(
                                            colors: [
                                              Colors.blue,
                                                Colors.green
                                            ],
                                            ),
                                          ),
                                          child:   
                                            Row( 
                                                children: [  
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Icon(Icons.devices_sharp,color: Colors.white,),
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text('Device info',style: TextStyle(color: Colors.white),)
                                                ],
                                            ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                          width: 6
                                        ),
                                      Container( 
                                        height: 70,
                                        width: 115,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow( 
                                               blurRadius: 2.1,
                                               spreadRadius: 0.1,
                                               offset: Offset(0 ,0.6)
                                            )
                                          ],
                                          gradient: LinearGradient(
                                          colors: [
                                            Colors.amber,
                                              Colors.red
                                          ],
                                          ),
                                        ),
                                        child:   
                                          Row( 
                                              children: [  
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 15),
                                                  child: Icon(Icons.browse_gallery,color: Colors.white,),
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text('Gallery',style: TextStyle(color: Colors.white),)
                                              ],
                                          ),
                                      ),
                                        SizedBox(
                                          width: 6
                                        ),
                                         Container( 
                                        height: 70,
                                        width: 115,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow( 
                                               blurRadius: 2.1,
                                               spreadRadius: 0.1,
                                               offset: Offset(0 ,0.6)
                                            )
                                          ],
                                          gradient: LinearGradient(
                                          colors: [
                                               Colors.purple,
                                              Colors.blue
                                          ],
                                          ),
                                        ),
                                        child:   
                                          Row( 
                                              children: [  
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 15),
                                                  child: Icon(Icons.emoji_emotions_outlined,color: Colors.white,),
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text('Mode',style: TextStyle(color: Colors.white),)
                                              ],
                                          ),
                                      ),
                                    
                                   ],
                                )
                               ],
                           ),
                              Row( 
                        children: [ 
                           Padding(
                             padding: const EdgeInsets.only(top: 15,left: 20),
                             child: Text('Our Feature',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF5B30A0,
                                  ),
                                  ),
                                  )
                           )
                        ],
                    ),
                     Column( 
                      children: [ 
                        Row( 
                            children: [  
                               Padding(
                                 padding: const EdgeInsets.only(top: 15,left: 18),
                                 child: Commoncontainer_dashboard(iconData: Icons.arrow_right, text: 'Playlist', color: Colors.pink,),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top: 15,left: 18),
                                 child: Commoncontainer_dashboard(iconData: Icons.location_on, text: 'Location', color: Color(0xFF5B30A0), ),
                               ),
                               
                            ],
                        ),
                         Column( 
                           children: [
                            Row( 
                              children: [  
                                Padding(
                                 padding: const EdgeInsets.only(top: 15,left: 18),
                                 child: Commoncontainer_dashboard(iconData: Icons.list, text: 'To_do_list', color: Colors.black,),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top: 15,left: 18),
                                 child: Commoncontainer_dashboard(iconData: Icons.book, text: 'Dairy', color: Colors.yellow,),
                               ),
                              ],
                            )
                           ],
                         ),
                          Column( 
                           children: [
                            Row( 
                              children: [  
                                Padding(
                                 padding: const EdgeInsets.only(top: 15,left: 18),
                                 child: Commoncontainer_dashboard(iconData: Icons.notes, text: 'Surprise Notes', color: Colors.pink,),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top: 15,left: 18),
                                 child: Commoncontainer_dashboard(iconData: Icons.nightlight, text: 'HoroScope', color: Colors.purple,),
                               ),
                              ],
                            )
                           ],
                         )
                      ],
                     )
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
