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
        child: SingleChildScrollView(
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
              SizedBox(height: 20,),

              Stack(
                children: [
                  Image.network(
                    "https://dq5r178u4t83b.cloudfront.net/wp-content/uploads/sites/125/2020/06/15182916/Sofitel-Dubai-Wafi-Luxury-Room-Bedroom-Skyline-View-Image1_WEB.jpg",
                    height: 258,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                  Container(
                    height: 258,
                    width: double.infinity,
                    color: Colors.black.withValues(alpha: 0.3),
                  ),

                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      child: Text(
                        "Grand Sultan",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Text("⭐4.5", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                  )
                ],
              ),
              
              SizedBox(height: 20),
          
              Stack(
                children: [
                  Image.network('https://img.freepik.com/free-photo/closeup-shot-beautiful-butterfly-with-interesting-textures-orange-petaled-flower_181624-7640.jpg?semt=ais_incoming&w=740&q=80'),
                  Container(
                    height: 255,
                    color: Colors.black.withValues(alpha: 0.3),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue
                          ),
                          child: Text("BEST DEAL", style: TextStyle(
                            fontSize: 18,
                            color: Colors.white
                          ),),
                        ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite, color: Colors.red,))
                    ],
                  )
                ],
              ),
              
              SizedBox(height: 20,),
              
              // Stack(
              //   children: [
              //     Image.network("https://dq5r178u4t83b.cloudfront.net/wp-content/uploads/sites/125/2020/06/15182916/Sofitel-Dubai-Wafi-Luxury-Room-Bedroom-Skyline-View-Image1_WEB.jpg"),
              //     Positioned(
              //       bottom: 20,
              //       left: 20,
              //         right: 20,
              //         child: ElevatedButton(onPressed: (){}, child: Text("Book Now")))
              //   ],
              // ),
              // SizedBox(height: 20,)
              
            ],
          ),
        ),
      ),
    );
  }
}
