import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:some_game_app/constants.dart';
import 'package:some_game_app/screens/Details/details_screen.dart';
class ChampionShard extends StatelessWidget {
  const ChampionShard({
    Key? key,
    required this.size, required this.image, required this.name, required this.nickname, required this.price,
  }) : super(key: key);

  final Size size;
  final String _path = "assets/immagini/campioni/";
  final String image;
  final String name;
  final String nickname;
  final int price;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailsScreen(image: image, name:name ,nickname: nickname,price: price,)),
      );},
    child: Container(
      /*child: Image(
        image: AssetImage("assets/immagini/campioni/kaisa.png",),
        fit: BoxFit.cover,
      ),*/
      margin: EdgeInsets.only(top: 10),
      //padding: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
      width: size.width * 0.95 ,
      height: size.width * 0.25,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(
              offset: Offset(0,10),
              blurRadius: 50,
              color: kPrimaryColor),],
        image: DecorationImage(
          image: ExactAssetImage(_path+image+".png"),
          fit: BoxFit.fill

        )
      ),
    )
    );
  }
}
