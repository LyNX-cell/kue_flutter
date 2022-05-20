import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:kue_flutter/Screen/pages/Login/loginpage.dart';
import 'package:kue_flutter/Screen/pages/profiles/componen/body.dart';
import 'package:page_transition/page_transition.dart';

class AccPage extends StatefulWidget {
  const AccPage({Key? key}) : super(key: key);

  @override
  State<AccPage> createState() => _AccPageState();
}

class _AccPageState extends State<AccPage> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 61, 121),
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Hi, \n' + user.email!,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(18)),
              padding: const EdgeInsets.all(.3),
              child: IconButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut().then(
                      (value) {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                type: PageTransitionType.leftToRight,
                                child: LogiPage()));
                      },
                    );
                  },
                  icon: SvgPicture.asset(
                    'asset/icons/power.svg',
                  )),
            )
          ],
        ),
      ),
      body: Body(),
    );
  }
}
