import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Color kBackGroundColor = Color(0xffFDFDFD);
Color kPrimaryColor = Color(0xffF2A213);
Color kAccentColor = Colors.grey;
Color kTextColor = Colors.grey[900];

//iconsize
double iconSize = 28.sp;

//styling

TextStyle kBoldTitle = TextStyle(
    color: Colors.black, fontSize: 32.sp, fontWeight: FontWeight.bold);

TextStyle kRegularStyle = TextStyle(color: kAccentColor, fontSize: 18.sp);

TextStyle kProductStyle = TextStyle(
    color: Colors.black, fontSize: 19.sp, fontWeight: FontWeight.w400);

TextStyle kAppBarTitle = TextStyle(fontSize: 22.sp, color: kAccentColor);

//Theme Configuration
ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    backgroundColor: kBackGroundColor,
    primaryColor: kPrimaryColor,
    canvasColor: kBackGroundColor,
    accentColor: kAccentColor);
