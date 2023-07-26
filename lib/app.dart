import 'package:flutter/material.dart';
import 'package:travel/OnboardingScreen/onboarding_splash.dart';
import 'package:travel/Screen/home_screen.dart';
import 'package:travel/Screen/splashscreen.dart';
import 'package:travel/constant/constants.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes:<String,WidgetBuilder>{
        Constants.SPLASH_SCREEN: (BuildContext context) => AnimatedSplashScreen(),
        Constants.ONBOARDING_SPLASH: (BuildContext context) => OnboardingSplash(),
        Constants.HOME:(BuildContext context)=> HomeScreen(),
      },
      // home: (title: 'Flutter Demo Home Page'),
      initialRoute:Constants.SPLASH_SCREEN,
    );
  }
}
