import 'package:flutter/material.dart';

class Module_11_class_1 extends StatelessWidget {
  const Module_11_class_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  helperText: 'Phone Number',// helperText is a text that is displayed below the text field.
                  hintText: 'Enter your phone number', // hintText is a text that is displayed inside the text field when it is empty.
                  labelText: 'Phone', // labelText is a text that is displayed above the text field when it is focused.

                  helperStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                  ),
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
