import 'package:flutter/material.dart';
import 'package:some_game_app/screens/Details/details_screen.dart';

import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
    required this.image,
    required this.name,
    required this.nickname,
    required this.price
  }) : super(key: key);
final String image;
  final String name;
  final String nickname;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(image: image,name: name,nickname: nickname,price: price,),
    );
  }
}
