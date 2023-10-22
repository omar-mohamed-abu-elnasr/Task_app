import 'package:flutter/material.dart';
import 'package:quiz/layout/home_layout.dart';
import 'package:quiz/pages/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes:{
        SplashScreen.routeName:(context) => SplashScreen(),
        HomeLayoutView.routeName:(context) => HomeLayoutView(),
      } ,
    );
}
}

