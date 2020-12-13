import 'package:busha_test/utils/assets.dart';
import 'package:busha_test/utils/colors.dart';
import 'package:busha_test/utils/decorator.dart';
import 'package:busha_test/homes/home.dart';
import 'package:busha_test/utils/size_config.dart';
import 'package:busha_test/tabshome.dart';
import 'package:busha_test/utils/x_margin.dart';
import 'package:busha_test/utils/y_margin.dart';
import 'package:flutter/material.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Builder(builder: (BuildContext context) {

        SizeConfig.init(context, width: 360, height: 640, allowFontScaling: true);

        return MyHomePage();

      }),
    );
  }
}
