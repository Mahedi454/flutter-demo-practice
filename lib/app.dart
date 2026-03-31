import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_project/home.dart';
import 'package:my_project/module_10/class_1.dart';
import 'package:my_project/module_10/class_2.dart';
import 'package:my_project/module_10/class_3.dart';
import 'package:my_project/module_9/class_3.dart';

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
          home: M_11_Class_1(),
          theme: ThemeData(
            useMaterial3: true, // ✅ modern touch

            brightness: Brightness.dark,

            primaryColor: Colors.deepOrange,
            primarySwatch: Colors.deepOrange,

            scaffoldBackgroundColor: Colors.white,

            appBarTheme: const AppBarTheme(
              elevation: 0,
              centerTitle: true,
            ),

            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange, // 🔥 primary color
                foregroundColor: Colors.white, // better contrast
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // more modern
                ),
                elevation: 2,
              ),
            ),

            textTheme: const TextTheme(
              bodyLarge: TextStyle(fontSize: 16),
              titleLarge: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
  }
}
