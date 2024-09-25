


import 'package:flutter/material.dart';
import 'package:socialhive_dart/views/auth/dashboard_screen/devicespace.dart';


class DeviceInfo_screen extends StatelessWidget {
  const DeviceInfo_screen ({super.key});

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
        body: 
           Column(
             children: [
               Padding(
                 padding: const EdgeInsets.only(bottom: 15),
                 child: Container(
                           height: 70,
                  width:  400, 
                  color: Colors.greenAccent,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Center(
                    child: Text(
                      'Device Info',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                 ),
               ),
                Expanded(
                  child: Row( 
                    children: [ 
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8,left: 9,bottom: 4),
                          child: Column(
                            children: [ 
                              
                                 Expanded(
                                  flex: 2,
                                   child: Container(
                                    decoration: BoxDecoration( 
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.blue,
                                       boxShadow: [
                                            BoxShadow( 
                                              color: Colors.grey,
                                               blurRadius: 15.1,
                                          
                                               offset: Offset(0 ,7.6)
                                            )
                                          ],
                                          gradient: LinearGradient(begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                               Color.fromRGBO(11, 2105, 182, 1),
                                              Colors.lightBlueAccent
                                          ],
                                          ),
                                    ),
                                     child: Center(child: Text('User Status',style: TextStyle(color: Colors.white,fontSize: 15),)),
                                   ),
                                 ),
                                 SizedBox(
                                  height: 10,
                                 ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                           decoration: BoxDecoration( 
                                      borderRadius: BorderRadius.circular(8),
                                       boxShadow: [
                                            BoxShadow( 
                                              color: Colors.grey,
                                               blurRadius: 15.1,
                                          
                                               offset: Offset(0 ,7.6)
                                            )
                                          ],
                                          gradient: LinearGradient(
                                          colors: [
                                                Colors.amber,
                                              Colors.pink,                                          ],
                                          ),
                                    ),
                                     child: Center(child: Text('Battery',style: TextStyle(color: Colors.white,fontSize: 15),)),
                                      ),
                                    )
                            ],
                          ),
                        ),
                      ),
            
                       Expanded(
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column( 
                              children: [ 
                                 Expanded(
                                   child: Container( 
                                      decoration: BoxDecoration( 
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.blue,
                                       boxShadow: [
                                            BoxShadow( 
                                              color: Colors.grey,
                                             blurRadius: 15.1,
                                          
                                               offset: Offset(0 ,7.6)
                                            )
                                          ],
                                          gradient: LinearGradient(begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                               Colors.blueAccent,
                                              Colors.white
                                          ],
                                          ),
                                    ),
                                     child: Center(child: Text('General',style: TextStyle(color: Colors.white,fontSize: 15),)),
                                   ),
                                 )
                              ],
                           ),
                         ),
                       )
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                 Expanded(
                  child: Row( 
                    children: [ 
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10,right: 8,left: 10,bottom: 22),
                          child: Row(
                            children: [ 
                                 Expanded(
                                 
                                   child: InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Devicespace()));
                                    },
                                     child: Container(
                                       decoration: BoxDecoration( 
                                          borderRadius: BorderRadius.circular(8),
                                          color: Colors.blue,
                                           boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey, 
                                                   blurRadius: 15.1,
                                            
                                                 offset: Offset(0 ,7.6)
                                                )
                                              ],
                                              gradient: LinearGradient(begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                   Colors.blueAccent,
                                                  Colors.lightBlueAccent
                                              ],
                                              ),
                                        ),
                                           child: Center(child: Text('Device Space',style: TextStyle(color: Colors.white,fontSize: 15),)),
                                     ),
                                   ),
                                 ),
                                   
                            ],
                          ),
                        ),
                      ),
                   
                       Expanded(
                        flex: 2,
                         child: Padding(
                           padding: const EdgeInsets.only(top: 10,bottom: 22,right: 6),
                           child: Column( 
                              children: [ 
                                 Expanded(
                                   child: Container( 
                                      decoration: BoxDecoration( 
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.blue,
                                         boxShadow: [
                                          
                                              BoxShadow( 
                                                color: Colors.grey,
                                                 blurRadius: 15.1,
                                          
                                               offset: Offset(0 ,7.6)
                                              )
                                            ],
                                            gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,
                                            colors: [
                                                   Colors.purple,
                                              Colors.blue
                                            ],
                                            ),
                                      ),
                                       child: Center(child: Text('Location',style: TextStyle(color: Colors.white,fontSize: 15),)),
                                   ),
                                 ),
                                    SizedBox(height: 10,),
                                  Expanded(
                                    flex: 2,
                                      child: Container(
                                          decoration: BoxDecoration( 
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.blue,
                                         boxShadow: [
                                              BoxShadow( 
                                                color: Colors.grey,
                                               blurRadius: 15.1,
                                          
                                               offset: Offset(0 ,7.6)
                                              )
                                            ],
                                            gradient: LinearGradient(
                                            colors: [
                                                  Colors.amber,
                                                Colors.pink
                                            ],
                                            ),
                                      ),
                                       child: Center(child: Text('Orientation',style: TextStyle(color: Colors.white,fontSize: 15),)),
                                      ),
                                    )
                              ],
                           ),
                         ),
                       )
                    ],
                  ),
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
