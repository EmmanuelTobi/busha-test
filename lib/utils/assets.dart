import 'package:busha_test/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';

mixin MkImageAssets {

  static SvgPicture bitcoin = SvgPicture.asset(
    'assets/images/bitcoin.svg', height: SizeConfig().sh(14), width: SizeConfig().sw(14), fit: BoxFit.contain,
  );

  static SvgPicture ethereum = SvgPicture.asset(
    'assets/images/ethereum.svg', height: SizeConfig().sh(14), width: SizeConfig().sw(14), fit: BoxFit.contain,
  );

  static SvgPicture steller = SvgPicture.asset(
    'assets/images/steller-lumens.svg', height: SizeConfig().sh(14), width: SizeConfig().sw(14), fit: BoxFit.contain,
  );

  static SvgPicture calendar = SvgPicture.asset(
    'assets/images/calendar.svg', height: SizeConfig().sh(14), width: SizeConfig().sw(14), fit: BoxFit.contain,
  );

  static SvgPicture coins = SvgPicture.asset(
    'assets/images/coins.svg', height: SizeConfig().sh(14), width: SizeConfig().sw(14), fit: BoxFit.contain,
  );

  static SvgPicture xlm = SvgPicture.asset(
    'assets/images/coins/XLM.svg', height: SizeConfig().sh(14), width: SizeConfig().sw(14), fit: BoxFit.contain,
  );

  static SvgPicture btc = SvgPicture.asset(
    'assets/images/coins/BTC.svg', height: SizeConfig().sh(14), width: SizeConfig().sw(14), fit: BoxFit.contain,
  );

  static SvgPicture ltc = SvgPicture.asset(
    'assets/images/coins/LTC.svg', height: SizeConfig().sh(14), width: SizeConfig().sw(14), fit: BoxFit.contain,
  );

  static SvgPicture eth = SvgPicture.asset(
    'assets/images/coins/ETH.svg', height: SizeConfig().sh(14), width: SizeConfig().sw(14), fit: BoxFit.contain,
  );


}
