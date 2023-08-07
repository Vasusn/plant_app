import 'package:flutter/material.dart';

import '../const.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/menu.png',
            height: 500,
          ),
        ),
      ),
    );
  }
}
