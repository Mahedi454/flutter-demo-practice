import 'package:flutter/material.dart';

class Module_11_class_1 extends StatelessWidget {
  const Module_11_class_1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(height: 10,),
                TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    helperText: 'Phone Number',// helperText is a text that is displayed below the text field.
                    hintText: 'Enter your phone number', // hintText is a text that is displayed inside the text field when it is empty.
                    labelText: 'Phone', // labelText is a text that is displayed above the text field when it is focused.

                    helperStyle: TextStyle(

                      color: Colors.green,
                    ),
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.black12,
                    ),

                    prefixIcon: Icon(Icons.phone),
                    suffixIcon: Icon(Icons.check),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                    )
                  ),
                ),
                  SizedBox(height: 20,),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      helperText: 'Password',
                      hintText: 'Enter your password',
                      labelText: 'Password',

                      helperStyle: TextStyle(

                        color: Colors.green,
                      ),
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.black12,
                      ),

                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)
                      )
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        if(phoneController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Phone number is required"))
                          );
                        }else if(phoneController.text.length != 11) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(
                                  "Phone number must be 11 digits"))
                          );
                        }else{
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(phoneController.text))
                          );
                        }
                        if(passwordController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Password is required"))
                          );
                        }else if(passwordController.text.length < 6) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(
                                  "Password must be at least 6 characters"))
                          );
                        }
                        print(phoneController.text);
                        print(passwordController.text);
                      },
                      child: Text("Submit")),
                ),
              ],
            ),
          )
      ),
    );
  }
}
