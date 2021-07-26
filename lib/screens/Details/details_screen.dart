import 'package:flutter/material.dart';
import 'package:some_game_app/screens/Details/details_screen.dart';

import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.image}) : super(key: key);
final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(image: image,),
    );
  }
}
