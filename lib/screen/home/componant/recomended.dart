import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../details/details_screen.dart';

class RecomendePlant extends StatelessWidget {
  const RecomendePlant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          plantCard(
            img:
                "https://m.media-amazon.com/images/I/41TKUBQ2fnL._SX300_SY300_QL70_FMwebp_.jpg",
            name: "Areca Palm",
            country: "Russia",
            price: 399,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    img:
                        "https://m.media-amazon.com/images/I/41TKUBQ2fnL._SX300_SY300_QL70_FMwebp_.jpg",
                    title: "Areca Palm",
                    price: 399,
                    contry: "Russia",
                  ),
                ),
              );
            },
          ),
          plantCard(
            img: "https://m.media-amazon.com/images/I/51gSTccNChL.jpg",
            name: "Money Plant",
            country: "India",
            price: 199,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    img: "https://m.media-amazon.com/images/I/51gSTccNChL.jpg",
                    title: "Money Plant",
                    price: 199,
                    contry: "India",
                  ),
                ),
              );
            },
          ),
          plantCard(
            img: "https://m.media-amazon.com/images/I/514dMn6Mp5L._SX569_.jpg",
            name: "Variegated",
            country: "Russia",
            price: 499,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                            img:
                                "https://m.media-amazon.com/images/I/514dMn6Mp5L._SX569_.jpg",
                            title: "Variegated",
                            price: 499,
                            contry: "Russia",
                          )));
            },
          ),
          plantCard(
            img: "https://m.media-amazon.com/images/I/51-hpERAKhL._SX569_.jpg",
            name: "Samantha",
            country: "Russia",
            price: 500,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                            img:
                                "https://m.media-amazon.com/images/I/51-hpERAKhL._SX569_.jpg",
                            title: "Samantha",
                            price: 500,
                            contry: "Russia",
                          )));
            },
          ),
        ],
      ),
    );
  }
}

class plantCard extends StatelessWidget {
  const plantCard({
    super.key,
    required this.img,
    required this.name,
    required this.country,
    required this.price,
    required this.press,
  });
  final String img, name, country;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.42,
      child: Column(
        children: [
          Image.network(
            img,
            height: size.height * 0.2,
            fit: BoxFit.cover,
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23)),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$name\n".toUpperCase(),
                            style: Theme.of(context).textTheme.titleSmall),
                        TextSpan(
                            text: country.toUpperCase(),
                            style: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5)))
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text("\$$price",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: kPrimaryColor))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
