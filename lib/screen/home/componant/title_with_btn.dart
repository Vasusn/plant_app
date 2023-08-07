import 'package:flutter/material.dart';

import '../../../const.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    super.key,
    required this.title,
    // ignore: non_constant_identifier_names
    required this.Press,
  });
  final String title;
  // ignore: non_constant_identifier_names
  final VoidCallback Press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
           TitleWithCoustomUnderLine(
            text: title,
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: Press,
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              backgroundColor: kPrimaryColor, // Background color
            ),
            child: Text("More"),
          )
        ],
      ),
    );
  }
}

class TitleWithCoustomUnderLine extends StatelessWidget {
  const TitleWithCoustomUnderLine({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(left: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
