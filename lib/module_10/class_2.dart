import 'package:flutter/material.dart';

class Module_10_class_2 extends StatelessWidget {
  const Module_10_class_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Module 10 Class 2",
          style: TextStyle(
            color: Colors.white,
        ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Logo_of_YouTube_%282015-2017%29.svg/1280px-Logo_of_YouTube_%282015-2017%29.svg.png",
           height: 100,
           width: 200
          ),

          InkWell(
            onTap: () {
              print("YouTube");
            },
            child: Image.asset("assets/YT.png",
            height: 100,
            width: 200),
          ),


        ],
      ),
    );
  }
}
