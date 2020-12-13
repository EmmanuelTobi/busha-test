import 'package:busha_test/utils/size_config.dart';
import 'package:flutter/material.dart';

class YMargin extends StatelessWidget {

  final double height;

  YMargin(this.height);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig().sh(height),
    );
  }
}
