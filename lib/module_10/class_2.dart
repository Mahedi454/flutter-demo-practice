import 'package:flutter/material.dart';

class Module_10_class_2 extends StatelessWidget {
  const Module_10_class_2({super.key});

  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formkey,
          child: Column(
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

              SizedBox(
                height: 40,
              ),

              Text("Login Here...!",
              style: TextStyle(fontSize: 25,
                color: Colors.purple[700],
              ),
              ),

              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email,
                    color: Colors.red[600],
                  ),
                  suffixIcon: Icon(Icons.check,
                  color: Colors.green),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your email";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock,
                  color: Colors.redAccent,),
                  suffixIcon: Icon(Icons.remove_red_eye,
                  color: Colors.blueAccent,),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your password";
                  }else if (value.length < 6) {
                    return "Password must be at least 6 characters";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white
                  ),
                    onPressed: () {
                    if(_formkey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Login successful"))
                      );
                    }
                    },
                    child: Text("Login")),
              )],
          ),
        ),
      ),
    );
  }
}
