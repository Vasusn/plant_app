import 'package:flutter/material.dart';

import '../../../const.dart';

class Featuredplants extends StatelessWidget {
  const Featuredplants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
            img: "https://m.media-amazon.com/images/I/61a6+nLXZ3L._SX569_.jpg",
            press: () {},
          ),
          FeaturedPlantCard(
            img: "https://m.media-amazon.com/images/I/614RbVkiznL._SX569_.jpg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    super.key,
    required this.img,
    required this.press,
  });
  final String img;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.75,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black38,
            image:
                DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)),
      ),
    );
  }
}
