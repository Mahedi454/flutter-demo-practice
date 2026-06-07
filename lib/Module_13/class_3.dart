import 'package:flutter/material.dart';

import '../Module_12/navi/class_2.dart';
import '../module_11/GridV.dart';
import '../module_11/M_11_Class_2.dart';
import '../module_11/M_11_Class_3.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selecteIndex = 0;

  List _pages = [
    Module12Class2(),
    Gridv(),
    M11Class2(),
    Alert()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_pages[_selecteIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue.shade300,
              Colors.purple.shade300
            ])
        ),
        child: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.blue.shade300,
            labelTextStyle: MaterialStateProperty.resolveWith(
                    (state){
                  if(state.contains(MaterialState.selected)){
                    return TextStyle(color: Colors.blue,fontSize: 20);

                  }else{
                    return TextStyle(color: Colors.black);

                  }
                }
            ),


            iconTheme: MaterialStateProperty.resolveWith(
                    (state){
                  if(state.contains(MaterialState.selected)){
                    return IconThemeData(color: Colors.white,size: 20);

                  }else{
                    return IconThemeData(color: Colors.black54);

                  }
                }
            ),

          ),
          child: NavigationBar(
              backgroundColor: Colors.transparent,

              selectedIndex: _selecteIndex,

              onDestinationSelected: (int index){

                setState((){
                  _selecteIndex = index;
                });

              },

              destinations: [

                NavigationDestination(icon: Icon(Icons.home_filled
                ), label: 'Home'),

                NavigationDestination(icon: Icon(Icons.message_rounded
                ), label: 'Inbox'),

                NavigationDestination(icon: Icon(Icons.person
                ), label: 'Profile'),

                NavigationDestination(icon: Icon(Icons.settings
                ), label: 'Setting'),



              ]


          ),
        ),
      ),
    );
  }
}