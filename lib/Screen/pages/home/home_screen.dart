import 'package:flutter/material.dart';
import 'package:kue_flutter/Screen/pages/home/componen/homebody.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static String routeName = "/home";
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody(),
    );
  }
}
