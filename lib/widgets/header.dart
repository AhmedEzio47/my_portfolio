import 'dart:math' as math;

import 'package:ahmed_nabil_portfolio/constants/colors.dart';
import 'package:ahmed_nabil_portfolio/constants/strings.dart';
import 'package:ahmed_nabil_portfolio/widgets/intro.dart';
import 'package:ahmed_nabil_portfolio/widgets/my_appbar.dart';
import 'package:ahmed_nabil_portfolio/widgets/my_picture.dart';
import 'package:ahmed_nabil_portfolio/widgets/my_social_accounts.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: VxBox(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ZStack(
            [
              ClipRect(
                child: CustomPaint(
                  size: Size(
                      context.percentWidth * 100, context.percentHeight * 50),
                  painter: MyCirclePainter(ratio: .3),
                ),
              ),
              ClipRect(
                child: CustomPaint(
                  size: Size(
                      context.percentWidth * 100, context.percentHeight * 50),
                  painter: MyCirclePainter(
                      color: MyColors.accentColor,
                      circleAlignment: CircleAlignment.topLeft),
                ),
              ),
              MyPicture(),
              Row(
                children: [
                  VStack(
                    [
                      VStack(
                        [
                          MyAppbar(),
                          MyStrings.myName.text.green800.bold.size(40).make(),
                          MyIntro(),
                          VxBox()
                              .color(MyColors.accentColor)
                              .height(10)
                              .width(100)
                              .make()
                        ],
                        alignment: MainAxisAlignment.end,
                      ).py12().shimmer(
                            primaryColor: MyColors.accentColor,
                            duration: Duration(seconds: 2),
                          ),
                    ],
                    alignment: MainAxisAlignment.spaceBetween,
                  ).pSymmetric(h: 8, v: 2),
                ],
              ),
            ],
            alignment: Alignment.bottomLeft,
          ),
          Container(
            color: Colors.blueGrey.shade900,
            padding: const EdgeInsets.all(8.0),
            child: SocialAccounts(),
          )
        ]),
      ).color(MyColors.bgColor).make(),
    );
  }
}

class MyCirclePainter extends CustomPainter {
  CircleAlignment circleAlignment;
  Color color;
  double ratio;
  MyCirclePainter(
      {this.circleAlignment = CircleAlignment.bottomRight,
      this.color = Colors.yellow,
      this.ratio = .5});
  @override
  void paint(Canvas canvas, Size size) {
    final radius = math.min(size.height * ratio, size.width * ratio);
    final offset = circleAlignment == CircleAlignment.topLeft
        ? Offset(.0, .0)
        : circleAlignment == CircleAlignment.topRight
            ? Offset(size.width, .0)
            : circleAlignment == CircleAlignment.bottomLeft
                ? Offset(.0, size.height)
                : Offset(size.width, size.height);
    canvas.drawCircle(offset, radius, Paint()..color = color);
  }

  @override
  bool shouldRepaint(covariant MyCirclePainter oldDelegate) {
    return color == oldDelegate.color &&
        circleAlignment == oldDelegate.circleAlignment;
  }
}

enum CircleAlignment {
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
}
