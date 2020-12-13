import 'package:busha_test/utils/colors.dart';
import 'package:busha_test/homes/home.dart';
import 'package:flutter/material.dart';

class TabsHome extends StatefulWidget {
  @override
  _TabsHomeState createState() => _TabsHomeState();
}

class _TabsHomeState extends State<TabsHome> {

  int _selectedIndex = 0;
  var pages = [MyHomePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: XColors.mainColor,
        items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: ""
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart),
            label: ""
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.autorenew_sharp),
            label: ""
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wallet_giftcard_rounded),
            label: ""
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.widgets_outlined),
            label: ""
        ),
        ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}