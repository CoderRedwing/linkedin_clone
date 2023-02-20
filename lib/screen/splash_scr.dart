import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkedin/screen/login_scr.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatehome();
  }
  _navigatehome()async{
    await Future.delayed( const Duration(milliseconds: 2100),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  }
  @override
  Widget build(BuildContext context) {
    //final double screenHeight=MediaQuery.of(context).size.height;
    //final double screenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
         padding: const EdgeInsets.all(110),

          child: Image.asset('images/linkedin.png',scale: 1,),
        ),
      ),
    );
  }
}

