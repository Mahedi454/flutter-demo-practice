import 'package:flutter/material.dart';

class class3 extends StatelessWidget {
  const class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue[50],
      // backgroundColor: Colors.blue.withOpacity(0.5),
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: Text('Class 3'),
        backgroundColor: Colors.red[100],
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                      // borderRadius: BorderRadius.all(Radius.circular(3))
                      // borderRadius: BorderRadius.only(
                      //   topLeft: Radius.circular(10),
                      //   bottomRight: Radius.circular(10),
                      // )
                    )
          ),
                  onPressed: () {},
                  child: Text("Button 1")),
              SizedBox(height: 20,),
              SizedBox(
                // width: double.infinity, // full width for mobile and other small screens
                width: 300, // fixed width for web and other large screens
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          // borderRadius: BorderRadius.all(Radius.circular(3))
                          // borderRadius: BorderRadius.only(
                          //   topLeft: Radius.circular(10),
                          //   bottomRight: Radius.circular(10),
                          // )
                        )
                    ),
                    onPressed: () {},
                    child: Text("Button 2")),
              ),

            ],
          )
      )

    );
  }
}
