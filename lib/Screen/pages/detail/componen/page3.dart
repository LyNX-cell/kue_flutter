import 'package:flutter/material.dart';

import '../../../../Components/widgets/button.dart';
import '../../../../Model/kue_model.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);
  static String routeName = "/page3";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 9, 61, 121),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 260,
            child: AspectRatio(
              aspectRatio: 0.8,
              child: Center(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: double.infinity,
                  height: 200,
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(
                    kueitems[2].images[0],
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 355,
            decoration: BoxDecoration(
                color: Colors.white70, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Text(
                    kueitems[2].title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "\.${kueitems[2].deskrpsi}.",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                    maxLines: 4,
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: const [
                        Text(
                          "See More",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Button(
                    name: "add to cart",
                    press: () {
                      Navigator.of(context).pop();
                    },
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
