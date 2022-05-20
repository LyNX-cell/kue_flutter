import 'package:flutter/material.dart';
import 'package:kue_flutter/Screen/pages/detail/componen/page1.dart';
import 'package:kue_flutter/Screen/pages/detail/componen/page4.dart';
import '../../detail/componen/page2.dart';
import '../../detail/componen/page3.dart';

class Penawaran extends StatelessWidget {
  const Penawaran({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PenawaranCard(
          press: () {
            Navigator.pushNamed(context, Page1.routeName);
          },
          image: 'asset/images/bakpao1.jpg',
          title: 'Bakpao Daging',
          price: 1500,
        ),
        PenawaranCard(
          press: () {
            Navigator.pushNamed(context, Page2.routeName);
          },
          image: 'asset/images/bika.jpg',
          title: 'Bika Ambon',
          price: 1500,
        ),
        PenawaranCard(
          press: () {
            Navigator.pushNamed(context, Page3.routeName);
          },
          image: 'asset/images/kue cucur.jpg',
          title: 'Kue Cucur',
          price: 1500,
        ),
        PenawaranCard(
            press: () {
              Navigator.pushNamed(context, Page4.routeName);
            },
            image: 'asset/images/serabi.jpg',
            title: 'Serabi',
            price: 2000)
      ],
    );
  }
}

class PenawaranCard extends StatelessWidget {
  const PenawaranCard({
    Key? key,
    required this.press,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);
  final VoidCallback press;
  final String image, title;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 14),
          child: SizedBox(
            width: 140,
            child: AspectRatio(
              aspectRatio: 1.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(image),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Text(
              title,
              maxLines: 1,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              price.toString(),
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            IconButton(
              onPressed: press,
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        )
      ],
    );
  }
}
