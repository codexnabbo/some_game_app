import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:some_game_app/screens/home/home_screen.dart';

import '../../../constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
     Key? key,
    required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => HomeScreen()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
        padding: EdgeInsets.all(kDefaultPadding / 2),
        height: 62,
        width: 62,
        decoration: BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 22,
              color: kPrimaryColor.withOpacity(0.22),
            ),
            BoxShadow(
              offset: Offset(-15, -15),
              blurRadius: 20,
              color: Color(0xFF686868)
            ),
          ],
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
