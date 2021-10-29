import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Mobile developer").text.xl3.white.make().w(context.isMobile
        ? context.percentWidth * 80
        : context.percentWidth * 40);
  }
}
