import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kue_flutter/Components/splash.dart';
import 'package:kue_flutter/routes.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kue Nusantara',
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
