import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kue_flutter/Screen/pages/catalogue_page.dart';

class searchBar extends StatelessWidget {
  searchBar({
    Key? key,
  }) : super(key: key);

  DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          //topBar

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Nice to see You again',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                padding: const EdgeInsets.all(.3),
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('asset/icons/search.svg'),
                ),
              ),
            ],
          ),

          // BAnner
        ],
      ),
    );
  }
}
