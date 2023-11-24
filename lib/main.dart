import 'package:flutter/material.dart';

import 'Screens/SplashScreen.dart';

void main()=>runApp(const Shopys());

class Shopys extends StatelessWidget {
  const Shopys({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

