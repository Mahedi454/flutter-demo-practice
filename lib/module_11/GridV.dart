import 'package:flutter/material.dart';

class Gridv extends StatelessWidget {
  const Gridv({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Container(
            color: Colors.red,
          )
          ,Container(
            color: Colors.green,
          )
          ,Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
              color: Colors.purple,
            ),
          Container(
              color: Colors.orange,
            ),
        ],
      ),
    );
  }
}
