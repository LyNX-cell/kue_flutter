import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:kue_flutter/Screen/pages/Login/loginpage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Color.fromARGB(255, 9, 61, 121),
      duration: 2000,
      splash: 'asset/images/logo.png',
      nextScreen: const LogiPage(),
      splashTransition: SplashTransition.scaleTransition,
    );
  }
}
