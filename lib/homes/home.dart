import 'dart:async';

import 'package:busha_test/models/TestDummyData.dart';
import 'package:busha_test/models/TestModel.dart';
import 'package:busha_test/utils/y_margin.dart';
import 'package:busha_test/views/TransactionHistoryItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:busha_test/utils/assets.dart';
import 'package:busha_test/utils/colors.dart';
import 'package:busha_test/utils/decorator.dart';
import 'package:busha_test/utils/size_config.dart';
import 'package:busha_test/utils/x_margin.dart';
import 'package:busha_test/utils/y_margin.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key,}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  ScrollController _controller;

  int scrollValueChanges = 0;
  ValueNotifier<int> scrollValueListener = new ValueNotifier(0);

  final List<String> filters = <String>[
    'Sort',
    'Currency',
    'Status',
    'Category',
  ];

  var totalScrollLength = 0;

  void _scrollListener() {

    if (_controller.position.userScrollDirection == ScrollDirection.reverse) {

      totalScrollLength = _controller.position.maxScrollExtent.ceil();

      scrollValueChanges = _controller.position.extentAfter.toInt() - _controller.position.extentBefore.toInt();
      scrollValueListener.value = scrollValueChanges;

    }

    if (_controller.position.userScrollDirection == ScrollDirection.forward) {

      totalScrollLength = _controller.position.maxScrollExtent.ceil();

      scrollValueChanges = _controller.position.extentAfter.toInt() - _controller.position.extentBefore.toInt();
      scrollValueListener.value = scrollValueChanges;

      print(totalScrollLength);
    }

  }

  BushaTestModel bushaTestModel = new BushaTestModel();

  @override
  initState() {
    super.initState();

    bushaTestModel = BushaTestModel.fromJson(DummyData().CryptoDummyData);
    _controller = ScrollController()..addListener(_scrollListener);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 4,
        child: CustomScrollView(
          controller: _controller,
          slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 20.0,
            floating: true,
            pinned: true,
            elevation: 0 ,
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(85),
              child: ValueListenableBuilder(
                valueListenable: scrollValueListener,
                builder: (context, int value, child) {
                  return AppBar(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    actions: value <= totalScrollLength - 200 ? [Icon(Icons.favorite, size: 32, color: Colors.black,), XMargin(30),  Icon(Icons.favorite, size: 32, color: Colors.black,)] : [],
                    centerTitle: true,
                    title: Text(value <= totalScrollLength - 200 ? "Home" : "", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.black),),
                  );
                }
              ),
            ),
          ),
          SliverAppBar(
              expandedHeight: 80.0,
              floating: true,
              pinned: true,
              title: Text("Home", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500, color: Colors.black),),
              actions: [Icon(Icons.favorite, size: 32, color: Colors.black,), XMargin(30),  Icon(Icons.favorite, size: 32, color: Colors.black,)],
            backgroundColor: Colors.white,
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverHeaderFilterDelegate(
              widget: Container(
                width: SizeConfig.screenWidthDp,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: filters.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                      child: Container(
                        decoration: boxDecorators.fillAlphaBlueDecoration,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              XMargin(10),
                            Text(
                              filters[index],
                              style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold,),
                            ),
                              const Icon(Icons.keyboard_arrow_down, color: Colors.black,),
                              XMargin(10),
                          ],),
                        ),
                      ),
                    );},
                ),
              ),
          ),),
          SliverToBoxAdapter(child: Container(
            child: Container(
              width: SizeConfig.screenWidthDp,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: bushaTestModel.cryptoTransactions.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(bushaTestModel.cryptoTransactions[index].day, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.4)),),

                          ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: bushaTestModel.cryptoTransactions[index].transactions.length,
                            itemBuilder: (BuildContext context, int t) {
                              return Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      RequestHistoryItemView(
                                        amount: bushaTestModel.cryptoTransactions[index].transactions[t].cryptoAmount.toString(),
                                        imageType: bushaTestModel.cryptoTransactions[index].transactions[t].image,
                                        time: bushaTestModel.cryptoTransactions[index].transactions[t].transactionTime,
                                        message: bushaTestModel.cryptoTransactions[index].transactions[t].transactionMessage,
                                      ),

                                    ],
                                  ),
                                ),
                              );},
                          ),
                        ],
                      ),
                    ),
                  );},
              ),
            ),
          ),),
          SliverToBoxAdapter(child: Container(height: 400,),),
        ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {

  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Colors.black,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }

}

class _SliverHeaderFilterDelegate extends SliverPersistentHeaderDelegate {

  _SliverHeaderFilterDelegate({this.widget});

  final Widget widget;

  @override
  double get minExtent => 56;
  @override
  double get maxExtent => 56;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Colors.white,
      child: widget,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }

}