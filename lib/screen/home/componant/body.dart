import 'package:flutter/material.dart';
import 'package:plant_app/const.dart';
import 'featured_plants.dart';
import 'header_with_search_bar.dart';
import 'recomended.dart';
import 'title_with_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBar(size: size),
          TitleWithMoreBtn(
            Press: () {},
            title: "Recomended",
          ),
          const RecomendePlant(),
          TitleWithMoreBtn(
            Press: () {},
            title: "Featured plants",
          ),
          const Featuredplants(),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
