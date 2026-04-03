import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String img, CityName, rating;
  const CityCard({
    super.key, required this.img, required this.CityName, required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(img,
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
            child: Text(CityName,
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
          child: Text("⭐${rating}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
        )
      ],
    );
  }
}
