import 'package:flutter/material.dart';

import 'componant/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.img, required this.title, required this.price, required this.contry});
  final String img, title,contry;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyD(
        title: title,
        price: price,
        img: img,
        contry: contry,
      ),
    );
  }
}
