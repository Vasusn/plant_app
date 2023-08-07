import 'package:flutter/material.dart';

import '../../components/bottom_navigaton_bar.dart';
import '../../const.dart';
import 'componant/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: buildAppbar(),
      body: const Body(),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Image.asset(
          'assets/menu (2).png',
          height: 35,
        ),
      ),
    );
  }
}
