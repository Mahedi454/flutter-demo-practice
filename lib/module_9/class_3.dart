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
                  child: Text("Button 1")), // ElevatedButton is a button that has a background color and a shadow. It is used for raised buttons.
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
                    onPressed: () {
                      print("Hello Mahedi");
                    },
                    child: Text("Button 2")),
              ),
              SizedBox(height: 20,),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(

                  ),
                  onPressed: () {},
                  child: Text("Submit")), // OutlinedButton is a button that has a border and no background color. It is used for outlined buttons.
              SizedBox(height: 20,),
              TextButton(onPressed: () {}, child: Text("Read More")), // TextButton is a button that has no background color and no border. It is used for text buttons.

              SizedBox(height: 20,), // SizedBox is used to add space between the widgets. Here, it is adding a vertical space of 20 pixels between the widgets.

              Icon(Icons.delete, color: Colors.red, size: 50,), //There are many icons available in flutter, you can use any of them by changing the name of the icon

              IconButton(onPressed: () {
                print("Call button pressed"); // After pressing the button, this message will be printed in the console
              }, icon: Icon(Icons.call)),

              GestureDetector( // GestureDetector is a widget that detects gestures. It is used to detect taps, long presses, double taps, etc. on the child widget.
                  onTap: (){
                    print("On Tap is working"); // After tapping the text, this message will be printed in the console
                  },
                  onLongPress: (){
                    print("On Long Press is working"); // After long pressing the text, this message will be printed in the console
                  },
                  onDoubleTap: (){
                    print("On Double Tap is working"); // After double tapping the text, this message will be printed in the console
                  },
                  child: Text("This is a text")),

              InkWell(
                onTap: (){
                  print("InkWell is working"); // After tapping the text, this message will be printed in the console
                },
                 onDoubleTap: (){
                   print("InkWell on Double Tap is working"); // After double tapping the text, this message will be printed in the console
                 },
                 onLongPress: (){
                   print("InkWell on Long Press is working"); // After long pressing the text, this message will be printed in the console
                 },
                child: Text("This is a text 2")
              )

            ],
          )
      )

    );
  }
}
