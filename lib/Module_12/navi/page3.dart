import 'package:flutter/material.dart';

import '../../module_10/class_2.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key, required String name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page-3"),
            SizedBox(height: 30),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('Back')),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module_10_class_2()));
            }, child: Text('Module_10_class_2'),
            )
          ],
        ),
      ),
    );
  }
}
