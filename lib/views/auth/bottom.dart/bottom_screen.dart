import 'package:flutter/material.dart';
import 'package:socialhive_dart/views/auth/dashboard_screen/home.dart';
import 'package:socialhive_dart/views/auth/notification.dart/notification_screen.dart';
import 'package:socialhive_dart/views/auth/profile_screen/profile.dart';



class bottomnavigation extends StatefulWidget {
  const bottomnavigation({super.key});

  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
   static const List<Widget> _widgetoption=[
       
      Profilescreen(),
       dashboardscreen(),
       notification_important()
   ];
     int selecteditom=1;
     void onTapfunction(int index){
      setState(() {
        selecteditom=index;
      });
     }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(child: 
       _widgetoption.elementAt(selecteditom) ,),
       bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor:   Color(0xFF5B30A0), selectedFontSize: 15,
        unselectedItemColor: Colors.grey.shade600,
          
       items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined,size: 35,),
        label: ''
        ),
         BottomNavigationBarItem(icon: Icon(Icons.home,size: 35,),
         label: ''
         ),
         
          BottomNavigationBarItem(icon: Icon(Icons.notification_important,size: 35,),
          label: ''
          ),
          
       ],
           currentIndex: selecteditom,
           onTap: onTapfunction,
       ),
    );
  }
}