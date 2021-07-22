import 'package:flutter/material.dart';
import 'package:some_game_app/constants.dart';
class RoleShard extends StatelessWidget {
  const RoleShard({
    Key? key,
    required this.size, required this.image,
  }) : super(key: key);

  final Size size;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding),
        width: size.width * 0.1,
        height: size.height * 0.05,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image)
          )
        ),
      ),
    );
  }
}
