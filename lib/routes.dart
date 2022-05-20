// We use name route
// All our routes will be available here
import 'package:flutter/material.dart';
import 'package:kue_flutter/Components/splash.dart';
import 'package:kue_flutter/Screen/pages/Login/loginpage.dart';
import 'package:kue_flutter/Screen/pages/Login/registrapage.dart';
import 'package:kue_flutter/Screen/pages/detail/componen/page1.dart';
import 'package:kue_flutter/Screen/pages/detail/componen/page3.dart';

import 'Screen/pages/detail/componen/page2.dart';
import 'Screen/pages/detail/componen/page4.dart';
import 'Screen/pages/home/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LogiPage.routeName: (context) => LogiPage(),
  Registrapage.routeName: (context) => Registrapage(),
  Home.routeName: (context) => Home(),
  Page1.routeName: (context) => Page1(),
  Page2.routeName: (context) => Page2(),
  Page3.routeName: (context) => Page3(),
  Page4.routeName: (context) => Page4(),
  // CartScreen.routeName: (context) => CartScreen(),
  // ProfileScreen.routeName: (context) => ProfileScreen(),
};
