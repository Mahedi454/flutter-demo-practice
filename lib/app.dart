import 'package:flutter/material.dart';
import 'package:my_project/home.dart';
import 'package:my_project/module_10/class_1.dart';
import 'package:my_project/module_10/class_2.dart';
import 'package:my_project/module_10/class_3.dart';
import 'package:my_project/module_9/class_3.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: M_10_Class_3()
    );
    
  }
}
