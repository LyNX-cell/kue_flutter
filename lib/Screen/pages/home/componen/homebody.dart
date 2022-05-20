import 'package:flutter/material.dart';
import 'package:kue_flutter/Screen/pages/home/componen/banner.dart';
import 'package:kue_flutter/Screen/pages/home/componen/rekomendasicard.dart';
import 'package:kue_flutter/Screen/pages/home/componen/penawarancard.dart';
import 'package:kue_flutter/Screen/pages/home/componen/titlewbttn.dart';
import 'package:kue_flutter/Screen/pages/home/componen/searchbar.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 9, 61, 121),
      body: Padding(
        padding: const EdgeInsets.all(23.8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Searchbar

              searchBar(),
              const SizedBox(
                height: 25,
              ),
              BannerWarung(),
              const SizedBox(
                height: 25,
              ),

              //Tombol See More

              TitlenMorebtn(
                title: 'Special For You',
                press: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              //Spesial For You Card

              const Rekomendasi(),
              const SizedBox(
                height: 20,
              ),

              //tombol

              TitlenMorebtn(title: 'Penawaran Terbatas', press: () {}),
              const SizedBox(
                height: 10,
              ),

              //Penawaran

              Penawaran()
            ],
          ),
        ),
      ),
    );
  }
}
