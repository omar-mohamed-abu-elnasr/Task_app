
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz/layout/home_layout.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash-screen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 4),
          () {
        Navigator.pushReplacementNamed(context, HomeLayoutView.routeName);
      },
    );

    var mediaQuery = MediaQuery.of(context).size;


    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 227, 211, 1.0),
      body: Center(
        child: Image(
          image: AssetImage("assets/images/logo.png"),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
