import 'package:flutter/material.dart';
import 'package:kue_flutter/Screen/pages/home/home_screen.dart';
import '../../Screen/pages/profiles/acc_page.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../../Screen/pages/catalogue_page.dart';

void main() => runApp(const MaterialApp(home: Hombar()));

class Hombar extends StatefulWidget {
  const Hombar({Key? key}) : super(key: key);

  @override
  _HombarState createState() => _HombarState();
}

class _HombarState extends State<Hombar> {
  int _page = 0;

  List pages = const [
    Home(),
    CartPage(),
    AccPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Color.fromARGB(255, 9, 61, 121),
        items: const [
          Icon(
            Icons.home_outlined,
            size: 30,
          ),
          Icon(
            Icons.shopping_cart_outlined,
            size: 30,
          ),
          Icon(
            Icons.person_outline_rounded,
            size: 30,
          )
        ],
        color: Colors.white,
        animationDuration: const Duration(milliseconds: 360),
        onTap: (index) {
          setState(
            () {
              _page = index;
            },
          );
        },
      ),
    );
  }
}
