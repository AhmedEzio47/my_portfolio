import 'package:ahmed_nabil_portfolio/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialAccounts extends StatelessWidget {
  final color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => launch(MyStrings.myFacebook),
          child: Icon(
            FontAwesomeIcons.facebook,
            size: 40,
            color: color,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        InkWell(
          onTap: () => launch(MyStrings.myLinkedIn),
          child: Icon(
            FontAwesomeIcons.linkedin,
            size: 40,
            color: color,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        InkWell(
          onTap: () => launch(MyStrings.myGithub),
          child: Icon(
            FontAwesomeIcons.github,
            size: 40,
            color: color,
          ),
        ),
      ],
    );
  }
}
