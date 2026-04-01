import 'package:flutter/material.dart';

class M11Class2 extends StatelessWidget {
  const M11Class2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Stack'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                    color: Colors.blue,
                    height: 200,
                    width: 200,
                  ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: Container(
                    color: Colors.red,
                    height: 150,
                    width: 150,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Container(
                    color: Colors.green,
                    height: 100,
                    width: 100,
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 30,
                  child: Container(
                    color: Colors.yellow,
                    height: 50,
                    width: 50,
                  ),
                ),
              ],
            ),

            Stack(
              children: [
                Image.network('https://img.freepik.com/free-photo/closeup-shot-beautiful-butterfly-with-interesting-textures-orange-petaled-flower_181624-7640.jpg?semt=ais_incoming&w=740&q=80'),
                Container(
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("BEST DEAL", style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                    ),),
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite, color: Colors.red,))
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
