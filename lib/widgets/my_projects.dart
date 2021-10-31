import 'package:ahmed_nabil_portfolio/widgets/project.dart';
import 'package:flutter/material.dart';

class MyProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      padding: EdgeInsets.all(8),
      childAspectRatio: 3,
      crossAxisCount: 2,
      children: [
        ProjectIWidget(
          color: const Color(0xffd82144),
          textColor: Colors.white,
          name: "Glitcher",
          image: 'assets/glitcher.png',
          url:
              'https://play.google.com/store/apps/details?id=com.devyat.glitcher',
        ),
        ProjectIWidget(
          color: const Color(0xfff5e83a),
          name: "Alhani",
          image: 'assets/alhani.png',
          url:
              'https://play.google.com/store/apps/details?id=com.devyat.alhani',
        ),
        ProjectIWidget(
          color: Color(0xff6F63BE),
          textColor: Colors.white,
          name: "Skippar",
          image: 'assets/skippar.png',
          url:
              'https://play.google.com/store/apps/details?id=com.devyat.skipparapp',
        ),
        ProjectIWidget(
          color: Colors.white,
          textColor: Colors.black,
          name: "My CV",
          image: 'assets/cv.png',
          url:
              'https://drive.google.com/file/d/12ej13wSO4rIJGSUWCdnfU5zEo5tEHq69/view?usp=sharing',
        ),
      ],
    );
  }
}
