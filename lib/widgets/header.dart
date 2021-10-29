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
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          ZStack(
            [
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
                      SocialAccounts()
                    ],
                    alignment: MainAxisAlignment.spaceBetween,
                  ).pSymmetric(h: 8, v: 16),
                ],
              ),
            ],
            alignment: Alignment.bottomLeft,
          ),
        ]),
      ).color(MyColors.bgColor).make(),
    );
  }
}
