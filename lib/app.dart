import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_project/home.dart';
import 'package:my_project/module_10/class_1.dart';
import 'package:my_project/module_10/class_2.dart';
import 'package:my_project/module_10/class_3.dart';
import 'package:my_project/module_11/M_11_Class_2.dart';
import 'package:my_project/module_9/class_3.dart';

import 'Module_12/navi/class_2.dart';
import 'Module_12/navi/class_3.dart';
import 'Module_12/navi/page1.dart';
import 'Module_12/navi/page2.dart';
import 'Module_12/navi/page3.dart';
import 'Module_13/class_1.dart';
import 'Module_13/class_2.dart';
import 'Module_13/class_3.dart';
import 'module_11/GridV.dart';
import 'module_11/M_11_Class_3.dart';
import 'module_11/class_1.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          initialRoute: '/BottomNav',
          routes: {
            '/home': (context) => Home(),
            '/class1': (context) => Module_10_class_1(),
            '/class2': (context) => Module_10_class_2(),
            '/class3': (context) => M_10_Class_3 (),
            '/class4': (context) => M11Class2(),
            '/class5': (context) => class3(),
            '/class6': (context) => Alert(),
            '/page1': (context) => Page1(),
            '/page2': (context) => Page2(name: '',),
            '/page3': (context) => Page3(name: '',),
            '/Module12Class2': (context) => Module12Class2(),
            '/Module12Class3': (context) => Module12Class3(),
            '/Module13Class1': (context) => Module13Class1(),
            '/Module13class2': (context) => Module13class2(),
            '/BottomNav': (context) => BottomNav(),

          },
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            useMaterial3: true,

            brightness: Brightness.light,

            primaryColor: Colors.deepOrange,
            primarySwatch: Colors.deepOrange,

            scaffoldBackgroundColor: Colors.blue.shade50,

            // ✅ ADD THIS (Text colors)
            textTheme: TextTheme(
              bodyLarge: TextStyle(
                color: Colors.black, // default text color
                fontSize: 16,
              ),
              bodyMedium: TextStyle(
                color: Colors.black,
              ),
              titleLarge: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.blue,
              elevation: 0,
              centerTitle: true,
              foregroundColor: Colors.white, // AppBar text/icon color
            ),

            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white, // button text color
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
