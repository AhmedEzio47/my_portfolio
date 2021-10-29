import 'package:ahmed_nabil_portfolio/constants/colors.dart';
import 'package:ahmed_nabil_portfolio/widgets/header.dart';
import 'package:ahmed_nabil_portfolio/widgets/my_projects.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[Header(), Expanded(child: MyProjects())],
        ),
      ),
    );
  }
}