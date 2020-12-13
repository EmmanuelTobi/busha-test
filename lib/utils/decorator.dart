import 'package:busha_test/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

mixin boxDecorators {

  static BoxDecoration containerDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(26.0)),
    boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 20, spreadRadius: 7)],
  );

  static BoxDecoration fillAlphaDecoration = BoxDecoration(
    color: Colors.deepPurple.withOpacity(0.08),
    borderRadius: BorderRadius.circular(13),
  );

  static BoxDecoration fillAlphaBlackDecoration = BoxDecoration(
    color: Colors.grey.withOpacity(0.3),
    borderRadius: BorderRadius.circular(18),
  );

  static BoxDecoration fillAlphaBlueDecoration = BoxDecoration(
    color: XColors.darkBlue.withOpacity(0.2),
    borderRadius: BorderRadius.circular(21),
  );

  static BoxDecoration fillGreyDecoration = BoxDecoration(
    color: Colors.grey.withOpacity(0.2),
    borderRadius: BorderRadius.circular(13),
  );

  static BoxDecoration whiteContainerDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(13),
  );

}