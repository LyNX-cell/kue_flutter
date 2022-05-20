import 'package:flutter/material.dart';
import 'package:kue_flutter/Screen/pages/profiles/componen/profilebut.dart';
import 'package:kue_flutter/Screen/pages/profiles/componen/profilepic.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 20,
      ),
      ProfilePic(),
      SizedBox(
        height: 20,
      ),
      ProfilBut(
        icons: 'asset/icons/portrait.svg',
        press: () {},
        text: 'My Account',
      ),
      ProfilBut(
        text: 'Notification',
        icons: 'asset/icons/bell.svg',
        press: () {},
      ),
    ]);
  }
}
