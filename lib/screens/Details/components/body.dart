import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'image_and_icons.dart';
import 'statistic_type.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.image,
    required this.name,
    required this.nickname,
    required this.price,
  }) : super(key: key);

  final String image;
  final String name;
  final String nickname;
  final int price;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(
            size: size,
            image: image,
          ),
          TitleAndPrice(title: name, country: nickname, price: price),
          SizedBox(height: kDefaultPadding),
          Divider(
            color: kTextColor,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            width: size.width,
            height: size.height * 0.05,
            child: Text(
              "Last Patch",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: kTextColor, fontSize: 20),
              textAlign: TextAlign.right,
            ),
          ),
          StatisticType(
            size: size,
            type: "Attack",
            stats: "14",
          ),
          separatore(size: size),
          StatisticType(
            type: "Armor",
            size: size,
            stats: "34",
          ),
          separatore(size: size)
        ],
      ),
    );
  }
}

class separatore extends StatelessWidget {
  const separatore({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.02,
      width: size.width,
    );
  }
}

