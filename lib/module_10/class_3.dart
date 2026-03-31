import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class M_10_Class_3 extends StatelessWidget {
  const M_10_Class_3({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;

    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: orientation == Orientation.portrait
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150.h,
              width: 300.w,
              color: Colors.red,
            ),
            SizedBox(height: 10.h),
            Text(
              "Mahedi Hasan",
              style: TextStyle(fontSize: 25.sp),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 150.h,
              width: 300.w,
              color: Colors.green,
            ),
            SizedBox(height: 10.h),
            Text(
              "Shihab",
              style: TextStyle(fontSize: 25.sp),
            ),
          ],
        )
            : Padding(
          padding: EdgeInsets.all(10.w),
          child: Row(
            children: [
              Container(
                height: 150.h,
                width: 150.w,
                color: Colors.red,
              ),

              SizedBox(width: 10.w),

              Expanded(
                child: Text(
                  "Mahedi Hasan",
                  style: TextStyle(fontSize: 20.sp),
                  overflow: TextOverflow.ellipsis,
                ),
              ),

              SizedBox(width: 10.w),

              Container(
                height: screenHeight * 0.2,
                width: 150.w,
                color: Colors.green,
              ),

              SizedBox(width: 10.w),

              Expanded(
                child: Text(
                  "Shihab",
                  style: TextStyle(fontSize: 20.sp),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}