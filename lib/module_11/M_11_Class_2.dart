import 'package:flutter/material.dart';

import '../widget/city_card.dart';

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
              Container(
                height: 50,
                child: Center(
                  child: Text(
                    "Top City's Hotels to Visit in Bangladesh",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              CityCard(img: 'https://yazzcollective.com/wp-content/uploads/2025/04/f0ebebb3thumbnail.jpeg', CityName: 'Dhaka', rating: '4.5',),
              SizedBox(height: 15,),
              CityCard(img: 'https://images.unsplash.com/photo-1631049307264-da0ec9d70304?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjBiZWRyb29tfGVufDB8fDB8fHww', CityName: "Cox's Bazar", rating: '4.8',),
              SizedBox(height: 15,),
              CityCard(img: 'https://img.freepik.com/free-photo/small-hotel-room-interior-with-double-bed-bathroom_1262-12489.jpg', CityName: 'Srimangol', rating: '5.0',),

              









              // SizedBox(height: 20),
              //
              // Stack(
              //   children: [
              //     Image.network('https://img.freepik.com/free-photo/closeup-shot-beautiful-butterfly-with-interesting-textures-orange-petaled-flower_181624-7640.jpg?semt=ais_incoming&w=740&q=80'),
              //     Container(
              //       height: 255,
              //       color: Colors.black.withValues(alpha: 0.3),
              //     ),
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //           Container(
              //             padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(10),
              //               color: Colors.blue
              //             ),
              //             child: Text("BEST DEAL", style: TextStyle(
              //               fontSize: 18,
              //               color: Colors.white
              //             ),),
              //           ),
              //         IconButton(onPressed: (){}, icon: Icon(Icons.favorite, color: Colors.red,))
              //       ],
              //     )
              //   ],
              // ),
              //
              // SizedBox(height: 20,),
              
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
