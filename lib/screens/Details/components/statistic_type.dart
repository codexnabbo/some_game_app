import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:some_game_app/constants.dart';

class StatisticType extends StatelessWidget {
  const StatisticType({
    Key? key,
    required this.type,
    required this.size,
    required this.stats,
  }) : super(key: key);
  final String type;
  final Size size;
  final String stats;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$type : ",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: kTextColor, fontSize: 20),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            "$stats",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: kTextColor, fontSize: 20),
          ),
          Spacer(),
          Container(
            width: size.width * 0.23,
            child: SvgPicture.asset("assets/icons/menu.svg"),
          ),

        ],
      ),
    );
  }
}
