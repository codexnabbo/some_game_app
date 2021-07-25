import 'package:flutter/material.dart';
import 'package:some_game_app/constants.dart';
import 'package:some_game_app/screens/home/components/champion_shard.dart';
import 'package:some_game_app/screens/home/components/header.dart';
import 'package:some_game_app/screens/home/components/role_shard.dart';


bool laneSelected = false;

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
              RoleShard(size: size, image: "assets/immagini/ruoli/Top.png",lane: "top",),
              RoleShard(size: size, image: "assets/immagini/ruoli/Jungle.png",lane: "jng"),
              RoleShard(size: size, image: "assets/immagini/ruoli/Middle.png",lane: "mid"),
              RoleShard(size: size, image: "assets/immagini/ruoli/Top.png",lane: "bot"),
              RoleShard(size: size, image: "assets/immagini/ruoli/Support.png",lane: "sup"),

            ],

          ),
          SizedBox( height: size.height * 0.05,),
          ChampionShard(size: size,image: "kaisa"),
          ChampionShard(size: size,image: "jhin"),
          ChampionShard(size: size,image: "kaisa"),
          ChampionShard(size: size,image: "jhin"),
        ]
        ),
      );
  }
}
class RoleShard extends StatefulWidget {
  const RoleShard({
    Key? key,
    required this.size, required this.image, required this.lane,
  }) : super(key: key);

  final Size size;
  final String image;
  final String lane ;
  @override
  _RoleShardState createState() => _RoleShardState(lane);
}

class _RoleShardState extends State<RoleShard> {
  final String lane;
  bool change = false;
  bool selected = true;
  var colore = kPrimaryColor;

  _RoleShardState(this.lane);
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        if(!laneSelected && selected){
          colore = kSelectedColor;
          laneSelected = true;
          change = true;
          selected = false;
        }else{
          colore = kPrimaryColor;
          selected = true;
          if(change){laneSelected = false;change = false;}
        }
        setState(() {
          
        });
      },
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding),
        width: widget.size.width * 0.1,
        height: widget.size.height * 0.05,
        decoration: BoxDecoration(
            color: colore,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(widget.image)
            )
        ),
      ),
    );
  }
}



