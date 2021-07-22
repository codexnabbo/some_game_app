import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:some_game_app/constants.dart';
class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // copre il 20% del height
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 26 + kDefaultPadding
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  "Hi Gamer!",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),
               //da aggiungere icona
               //Image.asset("assets/icons/logo.png")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
