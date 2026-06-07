import 'package:flutter/material.dart';
import 'package:my_project/Module_14/responsiveUI.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    navigateNextPage();
  }

  void navigateNextPage(){
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ResponsiveUi()));

    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.deepPurple,
        child: Image.network("https://www.svgrepo.com/show/303123/bmw-logo.svg", width: 20,),
      ),
    );
  }
}