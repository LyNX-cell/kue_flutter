import 'package:flutter/material.dart';
import 'package:kue_flutter/Screen/pages/detail/componen/page1.dart';

import '../../detail/componen/page2.dart';

class Rekomendasi extends StatelessWidget {
  const Rekomendasi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RekomendasiCard(
            image: 'asset/images/putu3.png',
            title: "Putu Bambu",
            press: () {
              Navigator.pushNamed(context, Page1.routeName);
            },
          ),
          RekomendasiCard(
            image: "asset/images/putu4.png",
            title: "Putu Ayu",
            press: () {
              Navigator.pushNamed(context, Page1.routeName);
            },
          ),
          RekomendasiCard(
            image: "asset/images/bakpao.png",
            title: 'Bakpao Hijau',
            press: () {
              Navigator.pushNamed(context, Page2.routeName);
            },
          ),
        ],
      ),
    );
  }
}

class RekomendasiCard extends StatelessWidget {
  const RekomendasiCard({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String image, title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 224,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                  child: Text.rich(
                    TextSpan(
                      text: title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
