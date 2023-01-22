import 'package:flutter/material.dart';
import 'package:project_1/utils/color.dart';

class AppStyles {
  Color? backgroundColor = const Color(0xffF3F6FF);
  Color? myDarkColor = const Color(0xff708090);
  Color? myLightColor = const Color(0xffd2b48c);
  Color? myDarkPink = const Color(0xff954535);
  Color? myPink = const Color(0xffa95c68);
  Color? myOrange = const Color(0xffe3735e);

  AppStyles({
    this.backgroundColor,
    this.myDarkColor,
    this.myLightColor,
    this.myDarkPink,
    this.myPink,
    this.myOrange,
  });

  AppStyles.fexedColor() {
    backgroundColor = HexColor.fromHex("#F3F6FF");
    myDarkColor = HexColor.fromHex("#708090");
    myLightColor = HexColor.fromHex("#d2b48c");
    myDarkPink = HexColor.fromHex("#954535");
    myPink = HexColor.fromHex("#a95c68");
    myOrange = HexColor.fromHex("#e3735e");
  }
}
