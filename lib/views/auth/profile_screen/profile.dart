import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:socialhive_dart/views/auth/dashboard_screen/commonlist.dart';
import 'package:socialhive_dart/views/auth/signINSCREEN/SignIn.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
    bool More = false;
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
                 CircularProfileAvatar(
                    '',
                    backgroundColor: Color(0xFF5B30A0), 
                    borderColor: Colors.pink,
                    borderWidth: 1,
                    elevation: 20,
                    radius: 50,
                  ),       
                    SizedBox(width: 13),
                    Column(
                      children: [
                        Text(
                          'Uzair mushtaq',
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
                )
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [ 
            SizedBox(
              height: 30,
            ),
              Center(child: Text('MY PROFILE',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
              )
              ),
              SizedBox(height: 25,),
             CircularProfileAvatar(
                      '',
                      backgroundColor: Color(0xFF5B30A0), 
                      borderColor: Colors.pink,
                      borderWidth: 1,
                      elevation: 20,
                      radius: 50,
                    ), 
                     SizedBox(height: 15,),
                      Column(
                        children: [
                          Text(
                            'Uzair Mushtaq',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'UzairMushtaq@gmail.com',
                            style: TextStyle(
                                color: Color(
                                  0xFF5B30A0,
                                ),
                                fontSize: 13),
                          ), 
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                      height: 55,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Color(0xFF5B30A0),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          'Edit Profile detail',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                             ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                       Container( 
                          height: 50,
                          width: 360,
                          decoration: BoxDecoration( 
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child:  
                              Row(
                              children: [ 
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Icon(Icons.email,size: 28,),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('Email',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text('Uzairmushtaq@gmail.com',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),)
                              ],
                              )
                       ),
                       SizedBox(
                        height: 18
                       ),
                        Container( 
                          height: 50,
                          width: 360,
                          decoration: BoxDecoration( 
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child:  
                              Row(
                              children: [ 
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Icon(Icons.flag_sharp,size: 28,),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('Country',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                    SizedBox(
                                      width: 153,
                                    ),
                                    Text('Pakistan',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),)
                              ],
                              )
                       ),
                          SizedBox(
                        height: 18
                       ),
                        Container( 
                          height: 50,
                          width: 360,
                          decoration: BoxDecoration( 
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child:  
                              Row(
                              children: [ 
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Icon(Icons.phone,size: 28,),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('Phone Number',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text('Not Currently Set',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),)
                              ],
                              )
                       ),
                       More
                       ?    Padding(
                         padding: const EdgeInsets.only(top: 20),
                         child: Container( 
                            height: 50,
                            width: 360,
                            decoration: BoxDecoration( 
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child:  
                                Row(
                                children: [ 
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Icon(Icons.male,size: 28,),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Gender',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(
                                        width: 192,
                                      ),
                                      Text('Male',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),)
                                ],
                                )
                         ),
                       )
                       :Container(),
                        More
                       ?  
                       Padding(
                         padding: const EdgeInsets.only(top: 20),
                         child: Container( 
                            height: 50,
                            width: 360,
                            decoration: BoxDecoration( 
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child:  
                                Row(
                                children: [ 
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Icon(Icons.switch_account,size: 28,),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Subhan latki',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(
                                        width: 140
                                      ),
                                      Text('Patner',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),)
                                ],
                                )
                         ),
                       )
                       :Container(),
                        More
                       ?  Padding(
                         padding: const EdgeInsets.only(top: 20),
                         child: Container( 
                            height: 50,
                            width: 360,
                            decoration: BoxDecoration( 
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child:  
                                Row(
                                children: [ 
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Icon(Icons.fingerprint,size: 28,),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('wwwwwwwwty23',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(
                                        width: 130,
                                      ),
                                      Text('UID',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),)
                                ],
                                )
                         ),
                       )
                         :Container(),
                        More
                       ?  
                       Padding(
                         padding: const EdgeInsets.only(top: 20),
                         child: Container( 
                            height: 50,
                            width: 360,
                            decoration: BoxDecoration( 
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child:  
                                Row(
                                children: [ 
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Icon(Icons.timer,size: 28,),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('24-11-2024',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      SizedBox(
                                        width: 55
                                      ),
                                      Text('Account Created',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),)
                                ],
                                )
                         ),
                       )
                       :Container(),
                       ElevatedButton(onPressed: (){
                        setState(() {
                          More =!More;
                        });
                       }, child: 
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text( More ? '- show less' : '+ show more'),
                       ))
        
                  ],
                      ), 
                      Column( 
                         children: [  
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 13),
                                child: Row( 
                                  children: [  
                                    Container( 
                                        height: 200,
                                        width: 170,
                                        decoration: BoxDecoration( 
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: LinearGradient(begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors: [
                                                  Colors.orange,
                                                    Colors.pink
                                              ],
                                              ),
                                        ),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 35),
                                              child: Text('Subscribe To',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                                            ),
                                            SizedBox(
                                              height: 85,
                                            ),
                                          Text('premium',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                                            
                                          ],
                                        ),
                                        
                                      ),
                                  
                                    SizedBox(
                                      width: 24,
                                    ),
                                       Container( 
                                      height: 200,
                                      width: 170,
                                      decoration: BoxDecoration( 
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                            colors: [
                                                Color.fromRGBO(11, 2105, 182, 1),
                                                  Colors.blue
                                            ],
                                            ),
                                      ),
                                      child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 35),
                                              child: Text('Subscribe On',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                                            ),
                                            SizedBox(
                                              height: 85,
                                            ),
                                          Text('N/A',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                                            
                                          ],
                                        ),
                                    )
                                  ],
                                ),
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
