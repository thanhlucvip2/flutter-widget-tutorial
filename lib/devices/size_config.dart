import 'package:flutter/material.dart';

class SizeConfig {
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double blockSizeHorizontal(BuildContext context) =>
      MediaQuery.of(context).size.width / 100;
  static double blockSizeVertical(BuildContext context) =>
      MediaQuery.of(context).size.height / 100;
}
