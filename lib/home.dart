import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first flutter app', style: TextStyle(
          color: Colors.white,
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Mahedi Hasan', style: TextStyle(
                fontSize: 25,
                color: Colors.purple[700],
              ),),
              Text('Mahedi Hasan', style: TextStyle(
                fontSize: 25,
                color: Colors.purple[700],
              ),),
              Text('Mahedi Hasan', style: TextStyle(
                fontSize: 25,
                color: Colors.purple[700],
              ),),
              Text('Mahedi Hasan', style: TextStyle(
                fontSize: 25,
                color: Colors.purple[700],
              ),),
            ],
          ),
        )
      // SingleChildScrollView(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //       Text('My name is Mahedi Hasan', style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.purple[700],
      //       ),),
      //     ],
      //   ),
      // )
    );
  }
}


