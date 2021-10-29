import 'package:flutter/material.dart';

class Functions {
  static bool isLandscape(BuildContext context) {
    return MediaQuery.of(context).size.height <
        MediaQuery.of(context).size.width;
  }
}
