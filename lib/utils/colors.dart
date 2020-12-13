import 'package:flutter/material.dart';


class XColors {
  
  static const Color lightBlue = Color(0xFF00ACEE);
  static const Color lightBlue2 = Color(0xFF2CC4E4); // indicator color 
  static const Color darkBlue = Color(0xFF3b5998);
  
  static const Color greyColor = Color(0xFFf0f0f0);
  static const Color greyScaffoldBg = Color(0xFFf8f8f8);

  static const Color whiteColor = Color(0xFFFFFFFF);

  static const Color transparent = Colors.transparent;

  static const Color articleItemColor = Color(0xFF262424);

  static const Color orangeColor = Color.fromARGB(200, 255, 137, 0);
  static const Color redColor = Color.fromARGB(200, 255, 45, 85);
  static const Color purpleColor = Color.fromARGB(200, 1, 19, 59);

  // Text colors
  static const Color lightBlueText = Color(0xFF2cc4e4);
  static const Color hintText = Color(0xFF78849e);
  static const Color textColor = Color(0xFF454f63);
  static const Color mainColor = Color(0xFF615260);
  static const Color alpha_mainColor = Color(0xFF000000);
  static const Color darkText = Color(0xFF000000);

  static const Color profileTextColor = Color(0xFF767676);

  // Gradient colors
  static const List<Color> button_gradient = <Color>[
    XColors.lightBlue,
    Color(0xFF3acce1),
  ];

  static const List<Color> appbar_gradient = <Color>[
    XColors.lightBlue2,
    XColors.lightBlue
  ];

}