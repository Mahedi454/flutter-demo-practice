import 'package:flutter/material.dart';

import '../../module_11/GridV.dart';
import '../../module_11/M_11_Class_2.dart';
import '../../module_11/M_11_Class_3.dart';

class Module12Class2 extends StatelessWidget {
  const Module12Class2({super.key, });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabbar"),
          bottom: TabBar(
            indicator: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
              indicatorPadding: EdgeInsets.all(1),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              unselectedLabelStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w100,
              ),
              tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: "Favorite",
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: "Settings",
            ),
          ]),
        ),
        // body: TabBarView(children: [
        //   // Text('Home', style: TextStyle(
        //   //   fontSize: 18,
        //   // ),),
        //   // Text('Favorite', style: TextStyle(
        //   //   fontSize: 18,
        //   // ),),
        //   // Text('Settings', style: TextStyle(
        //   //   fontSize: 18,
        //   // ),),
        //   // Container(color: Colors.red),
        //   // Container(color: Colors.green),
        //   // Container(color: Colors.purple),
        //   M11Class2(),
        //   Alert(),
        //   Gridv()
          body: TabBarView(children: [
            M11Class2(),
            Alert(),
            Gridv()
        ]),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage('https://png.pngtree.com/png-clipart/20230927/original/pngtree-man-avatar-image-for-profile-png-image_13001882.png'),
                  ),
                  SizedBox(height: 10,),
                  Text('Mahedi Hasan', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('App Developer', style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              )),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Dashboard'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: (){},
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage('https://png.pngtree.com/png-clipart/20230927/original/pngtree-man-avatar-image-for-profile-png-image_13001882.png'),
                  ),
                  SizedBox(height: 10,),
                  Text('Mahedi Hasan', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('App Developer', style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              )),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Dashboard'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
