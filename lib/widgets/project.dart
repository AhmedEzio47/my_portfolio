import 'package:ahmed_nabil_portfolio/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class ProjectIWidget extends StatelessWidget {
  final double height = 70;
  final String? name, image, url;
  final Color? color;
  final Color textColor;
  const ProjectIWidget(
      {Key? key,
      this.name,
      this.image,
      this.url,
      this.color,
      this.textColor = Colors.black})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launch(url ?? ''),
      child: VxBox(
              child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image ?? ''),
          SizedBox(
            width: 10,
          ),
          (name ?? '').text.color(textColor).xl2.bold.make()
        ],
      ))
          .color(color ?? MyColors.primaryColor)
          .shadow
          .p8
          .height(height)
          .rounded
          .make(),
    );
  }
}
