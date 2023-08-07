
import 'package:flutter/material.dart';

import '../../../const.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    super.key,
    required this.title,
    required this.contry,
    required this.price,
  });

  final String title;
  final String contry;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 65, 64, 64),
                  ),
                ),
                TextSpan(
                  text: contry,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            "\$$price",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: kPrimaryColor,
            ),
          )
        ],
      ),
    );
  }
}
