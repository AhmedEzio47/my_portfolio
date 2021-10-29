import 'package:flutter/material.dart';

class MyPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/me.png',
        height: (MediaQuery.of(context).size.height) * .5,
      ),
    );
  }
}
