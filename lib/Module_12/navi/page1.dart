import 'package:flutter/material.dart';
import 'package:my_project/Module_12/navi/page2.dart';
import 'package:my_project/Module_12/navi/page3.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Page2(name: 'Hasan',)));
            }, child: Text("Navi")),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page2(name: 'Mahedi',)));
            }, child: Text('Go to Page 2')),
            SizedBox(height: 30),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page3(name: 'Shihab',)));
            }, child: Text('Go to Page 3')),
            
            Divider(),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/page2', arguments: 'Mahedi Hasan');
            }, child: Text('Navi 2.0 Page 2')),
            SizedBox(height: 30),
            ElevatedButton(onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, '/page2', (route) => false, arguments: 'Mahedi Hasan');
            }, child: Text('Navi 2.0 Page 2 with Remove Until'))
          ],
        ),
      ),
    );
  }
}
