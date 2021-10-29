import 'package:ahmed_nabil_portfolio/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      child: Icon(
        FontAwesomeIcons.code,
        size: 50,
        color: MyColors.accentColor,
      ),
    );
  }
}
