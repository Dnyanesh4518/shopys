import 'package:flutter/material.dart';
import 'package:shopys/Screens/HomeScreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller=AnimationController(vsync: this,duration: Duration(seconds: 2),);
    controller.addListener(() {

    });
    controller.addStatusListener((status) {
      if(status==AnimationStatus.completed)
        {
           Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>HomeScreen()));
        }
    });
    controller.forward();


  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: ScaleTransition(
        scale: Tween<double>( begin: 0.5,end:1).animate(CurvedAnimation(
                parent: controller,
                curve: Curves.bounceInOut
            )),
        child:const  Center(child: Image(image: AssetImage("assets/Images/splashImg.png")),
       ),
      )

    );
  }
}
