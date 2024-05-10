import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:musictones2/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 4),(){

      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>HomeScreen()));
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
     return Scaffold(
      body:Container(
        width: double.infinity,
        height: height,
        child:buildLogo(width,height) ,
      ),
    );
  }
  Widget buildLogo(width,height)=>Container(
    width: width*0.4,
    height: height*0.4,
    child: Image(
      image:AssetImage('assets/logo.png',
      ),
    ),
  );
}
