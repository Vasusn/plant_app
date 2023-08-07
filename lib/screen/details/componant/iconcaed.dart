import 'package:flutter/material.dart';


class IconCard extends StatelessWidget {
  const IconCard({
    super.key,
    required this.icon,
  });

  final String icon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(20.0 / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: Color(0xfff9f8fd),
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 22,
              color: Color(0xff0c9869).withOpacity(0.22)),
          BoxShadow(
              offset: Offset(-15, -15), blurRadius: 20, color: Colors.white)
        ],
      ),
      child: Image.asset(
        icon,
        color: Color(0xff0c9869),
      ),
    );
  }
}
