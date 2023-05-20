import 'package:flutter/material.dart';

import 'colorz.dart';
import 'fonts.dart';

class CustomTheme {

  static TextStyle get textStyleTextBigNunito {
    return const TextStyle(
      fontFamily: Fontz.nunito,
      fontStyle: FontStyle.normal,
      color: Colorz.black,
      fontSize: 30,
      fontWeight: FontWeight.w900,
      height: 1.26,
      letterSpacing: 0,
    );
  }
  static TextStyle get textStyleTextMediumNunito  {
    return const TextStyle(
      fontFamily: Fontz.nunito,
      color: Colorz.black,
      fontSize: 20,
      fontWeight: FontWeight.w400,
      height: 1.35,
      letterSpacing: 0,
    );
  }

  static TextStyle get textStyleTextDateNunito  {
    return const TextStyle(
      fontFamily: Fontz.nunito,
      color: Colorz.black,
      fontSize: 40.0,
      fontWeight: FontWeight.w900,
      height: 55.0 / 40.0,
      letterSpacing: 0,
    );
  }

  static TextStyle get textStyleTitleNunito {
    return const TextStyle(
      fontFamily: Fontz.nunito,
      color: Colors.black,
      fontSize: 25,
      fontWeight: FontWeight.w700,
      height: 34 / 25,
    );
  }


  static TextStyle get textStyleSimple {
    return const TextStyle(
      fontFamily: Fontz.nunito,
      color: Colorz.white,
      fontSize: 20,
      fontWeight: FontWeight.w400,
      height: 1.35,
      letterSpacing: 0,
    );
  }

}
