import 'package:busha_test/utils/assets.dart';
import 'package:busha_test/utils/size_config.dart';
import 'package:busha_test/utils/x_margin.dart';
import 'package:busha_test/utils/y_margin.dart';
import 'package:flutter/material.dart';

class RequestHistoryItemView extends StatelessWidget {

  final String time;
  final String message;
  final String state;
  final String imageType;
  final String amount;

  RequestHistoryItemView({
    this.amount,
    this.message,
    this.time,
    this.imageType,
    this.state,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.centerLeft,
      width: SizeConfig.screenWidthDp,
      child: Row(children: [

          if(imageType == "btc") ... [

            Container(
                height: 40,
                width: 40,
                child: MkImageAssets.btc
            ),

          ] else if (imageType == "xlm") ... [

            Container(
                height: 40,
                width: 40,
                child: MkImageAssets.xlm
            ),

          ] else if (imageType == "eth") ... [

            Container(
                height: 40,
                width: 40,
                child: MkImageAssets.eth
            ),

          ] else if (imageType == "ltc") ... [

            Container(
                height: 40,
                width: 40,
                child: MkImageAssets.ltc
            ),

          ],

          XMargin(10),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            Text(message, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.black),),

            YMargin(5),

            Text(time, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.3)),),

          ],),

          Expanded(child: XMargin(10)),

          Text(amount, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.black),),

          XMargin(10),

          Text("BTC", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.black),),

          YMargin(10),

      ],
      ),
    );
  }
}