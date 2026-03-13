import 'package:flutter/material.dart';

class M_10_Class_3 extends StatelessWidget {
  const M_10_Class_3({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;

    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(orientation.toString()),
            // Text("Screen width: $screenWidth"),
            // Text("Screen height: $screenHeight"),
            Container(
              height: 150,
              width: 300,
              color: Colors.red,
            ),
            Text("Mahedi Hasan",
            style: TextStyle(
              fontSize: 25,
            ),
            ),
            Container(
              height: screenHeight * 0.2,
              width: screenWidth * 0.6,
              color: Colors.green,
            ),
            Text("Shihab",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
      )
    );
  }
}
