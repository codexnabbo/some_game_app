import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: buildAppBar(),
      body: Body(),
    );
  }
  AppBar buildAppBar() {
    return AppBar(
      leading: Builder(
        builder: (context) => IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      elevation: 0,
      brightness: Brightness.dark,
    );
  }
}
