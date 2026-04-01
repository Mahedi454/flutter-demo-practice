import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_project/home.dart';
import 'package:my_project/module_10/class_1.dart';
import 'package:my_project/module_10/class_2.dart';
import 'package:my_project/module_10/class_3.dart';
import 'package:my_project/module_11/M_11_Class_2.dart';
import 'package:my_project/module_9/class_3.dart';

import 'module_11/GridV.dart';
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
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          home: M11Class2(),
          theme: ThemeData(
            useMaterial3: true,

            brightness: Brightness.dark,

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
              elevation: 0,
              centerTitle: true,
              foregroundColor: Colors.white, // AppBar text/icon color
            ),

            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
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
