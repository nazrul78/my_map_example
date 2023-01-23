import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../helpers/hex_color.dart';

class AppTheme {
  AppTheme._();

  static Color primaryColor = hexToColor('#007BEC');
  static Color appbarColor = hexToColor('#EEEEEE');
  static Color textColor = hexToColor('#41525A');
  static Color white = Colors.white;

  static Color color1 = hexToColor('#2c3e50');
  static Color color2 = hexToColor('#FFA133');
  static Color color3 = hexToColor('#8A8D93');
  static Color color4 = hexToColor('#78909C');
  static Color color5 = hexToColor('#EAEAF3');
  static Color color6 = hexToColor('#9BA9B3');
  static Color color7 = hexToColor('#06283D');
  static Color color8 = hexToColor('#7895B2');

  static Color black = Colors.black;

  static final themeData = ThemeData(
    useMaterial3: true,
    applyElevationOverlayColor: false,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: primaryColor,
    dialogBackgroundColor: Colors.white,
    canvasColor: Colors.white,
    brightness: Brightness.light,
    inputDecorationTheme: InputDecorationTheme(
      errorStyle: TextStyle(
        color: hexToColor('#e74c3c').withOpacity(.5),
      ),
      // contentPadding: EdgeInsets.symmetric(vertical: 12),
      // border: OutlineInputBorder(
      //   // borderSide: BorderSide.none,
      //   borderRadius: BorderRadius.circular(
      //     10,
      //   ),
      // ),
      enabledBorder: UnderlineInputBorder(
          // borderSide: BorderSide.none,
          borderSide: BorderSide(color: AppTheme.primaryColor, width: .8)),
      focusedBorder: UnderlineInputBorder(
          // borderSide: BorderSide.none,
          borderSide: BorderSide(color: AppTheme.primaryColor, width: .8)),
      errorBorder: UnderlineInputBorder(
          // borderSide: BorderSide.none,
          borderSide: BorderSide(color: Colors.red, width: .8)),
      focusedErrorBorder: UnderlineInputBorder(
          // borderSide: BorderSide.none,
          borderSide: BorderSide(color: AppTheme.primaryColor, width: .8)),
      // fillColor: hexToColor('#F2F7FB'),
      // filled: true,
      hintStyle: TextStyle(
        color: hexToColor('#8A8D93'),
      ),
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppTheme.appbarColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: textColor,
      ),
      headline2: TextStyle(color: textColor),
      headline3: TextStyle(color: textColor),
      headline4: TextStyle(color: textColor),
      headline5: TextStyle(color: textColor),
      subtitle1: TextStyle(color: textColor),
      subtitle2: TextStyle(color: textColor),
      button: TextStyle(color: textColor),
    ),
    iconTheme: IconThemeData(color: Colors.black54),
    pageTransitionsTheme: PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder()
      },
    ),
    fontFamily: 'Cera Regular',
    primaryTextTheme: TextTheme(
      headline2: TextStyle(color: Colors.black54),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.black54,
      selectionColor: Colors.black54,
      selectionHandleColor: Colors.black54,
    ),
  );
}
