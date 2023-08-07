import 'package:flutter/material.dart';

import '../../../const.dart';
import 'iconcaed.dart';

class ImgAndIcon extends StatelessWidget {
  const ImgAndIcon({
    super.key,
    required this.img,
  });

  final String img;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 2),
      child: SizedBox(
        height: size.height * .8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          padding:
                              EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back)),
                    ),
                    const Spacer(),
                    const IconCard(
                      icon: 'assets/sun.png',
                    ),
                    const IconCard(
                      icon: 'assets/temperature.png',
                    ),
                    const IconCard(
                      icon: 'assets/water-stream.png',
                    ),
                    const IconCard(
                      icon: 'assets/wind.png',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(63),
                    bottomLeft: Radius.circular(63),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.29))
                  ],
                  image: DecorationImage(
                      // alignment: Alignment.centerLeft,
                      fit: BoxFit.fitHeight,
                      image: NetworkImage(img))),
            )
          ],
        ),
      ),
    );
  }
}
