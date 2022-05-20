import 'package:flutter/material.dart';

class BannerWarung extends StatelessWidget {
  const BannerWarung({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20, bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: const Text.rich(
        TextSpan(
          text: "Grand Opening\n ",
          style: TextStyle(fontWeight: FontWeight.w300, height: 1.3),
          children: [
            TextSpan(
              text: "Warung Jajan \n",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "Nusantara",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
