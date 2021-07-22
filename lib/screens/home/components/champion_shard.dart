import 'package:flutter/material.dart';
import 'package:some_game_app/constants.dart';
class ChampionShard extends StatelessWidget {
  const ChampionShard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
      width: size.width * 0.95 ,
      height: size.width * 0.25,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(
              offset: Offset(0,10),
              blurRadius: 50,
              color: kPrimaryColor),]
      ),
    );
  }
}
