
import 'package:flutter/material.dart';

import '../../../const.dart';

class HeaderWithSearchBar extends StatelessWidget {
  const HeaderWithSearchBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding:const EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: kDefaultPadding + 36),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: [
                const Text(
                  "Hi User!",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Image.asset(
                  'assets/user.png',
                  width: 50,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23))
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: kPrimaryColor.withOpacity(0.5),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.search,
                      color: kPrimaryColor.withOpacity(0.5),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
