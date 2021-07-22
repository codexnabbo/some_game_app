import 'package:flutter/material.dart';
import 'package:some_game_app/constants.dart';
import 'package:some_game_app/screens/home/components/champion_shard.dart';
import 'package:some_game_app/screens/home/components/header.dart';
import 'package:some_game_app/screens/home/components/role_shard.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Header(size: size),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RoleShard(size: size, image: "assets/immagini/ruoli/Top.png"),
              RoleShard(size: size, image: "assets/immagini/ruoli/Jungle.png"),
              RoleShard(size: size, image: "assets/immagini/ruoli/Middle.png"),
              RoleShard(size: size, image: "assets/immagini/ruoli/Top.png"),
              RoleShard(size: size, image: "assets/immagini/ruoli/Support.png"),

            ],

          ),
          SizedBox( height: size.height * 0.05,),
          for(int i = 0; i<150; i++)
            ChampionShard(size: size)
        ],
        ),
      );
  }
}


