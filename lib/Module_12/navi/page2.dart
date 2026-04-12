import 'package:flutter/material.dart';
import 'package:my_project/Module_12/navi/page3.dart';

class Page2 extends StatelessWidget {
  final String name;
  const Page2({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
             Text(name, style: TextStyle(
              fontSize: 25,
             ),),
            Text("Page-2"),
            SizedBox(height: 30),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('Back')),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page3(name: "Mahedi Hasan")));
            }, child: Text('Go to Page 3'))
          ],
        ),
      ),
    );
  }
}
