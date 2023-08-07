import 'package:flutter/material.dart';

import '../const.dart';
class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 2,
          bottom: kDefaultPadding * 0.4),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 35,
              color: kPrimaryColor.withOpacity(0.38))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/flower.png',
              color: kPrimaryColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/heart.png',
              color: kPrimaryColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/user1.png',
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
