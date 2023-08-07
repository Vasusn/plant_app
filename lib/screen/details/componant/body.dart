import 'package:flutter/material.dart';
import 'package:plant_app/const.dart';
import 'imgandicon.dart';
import 'title_price.dart';

class BodyD extends StatelessWidget {
  const BodyD(
      {super.key,
      required this.img,
      required this.title,
      required this.price,
      required this.contry});
  final String img, title, contry;
  final int price;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImgAndIcon(img: img),
          TitleAndPrice(title: title, contry: contry, price: price),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    backgroundColor: kPrimaryColor, // Background color
                  ),
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: kBackgroundColor, // Background color
                  ),
                  onPressed: () {},
                  child: Text(
                    "Description",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
