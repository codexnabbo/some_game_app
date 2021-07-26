import 'package:flutter/material.dart';


import '../../../constants.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.image,

  }) : super(key: key);

 final String image;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size, image: image,),
          TitleAndPrice(title: "Kaisa", country: "Dauther of the void", price: 6300),
          SizedBox(height: kDefaultPadding),





        ],
      ),
    );
  }
}
