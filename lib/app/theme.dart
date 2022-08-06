import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTheme {
  static const Color primaryColor = Colors.blue;
  static const double symmetricHozPadding = 13.0;
  static const Color lightGray = Color(0xFF707070);
  static const Color darkGray = Color(0xFF3E3E3E);
  static const Color primaryBgColorDark = Colors.black;

  static const Color darkTextColor = Colors.white;
  static const Color lightTextColor = Color(0xff3E3E3E);

  static const Color lightIconColor = Colors.blue;
  static const Color drawerButtonColor = Colors.blue;
  static const Color lightBlue = Color(0xFF29ABE2);
  static const Color lightBlack = Color(0xFF15181C);
  static const Color darkBackgroundColor = Color(0xFF111111);

  static ThemeData lightTheme() => ThemeData(
    primaryColor: Colors.blue,
    primaryColorDark: Colors.blue[700],
    shadowColor: Colors.black,
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    dividerColor: Colors.black,
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    iconTheme: IconThemeData(color: lightGray),
    bottomAppBarColor: Colors.white,
    buttonColor: Colors.white,
    // fontFamily: fontFamily,
    textTheme: TextTheme(
      headline1: TextStyle(
        color: lightTextColor,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      headline2: TextStyle(
          color: lightTextColor, fontWeight: FontWeight.bold, fontSize: 22),
      headline3: TextStyle(
          color: lightTextColor, fontWeight: FontWeight.bold, fontSize: 20),
      headline4: TextStyle(fontSize: 18, color: lightTextColor),
      headline5: TextStyle(color: lightTextColor, fontSize: 16),
      headline6: TextStyle(
        color: lightTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
      caption: TextStyle(color: lightTextColor, fontSize: 14),
      subtitle2: TextStyle(color: lightTextColor, fontSize: 12),
      subtitle1: TextStyle(color: lightTextColor, fontSize: 14),
      button: TextStyle(color: lightTextColor, fontSize: 12),
      bodyText1: TextStyle(fontSize: 14, color: lightTextColor),
      bodyText2: TextStyle(fontSize: 12, color: lightTextColor),
    ),
  );

  static ThemeData darkTheme() => ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      iconTheme: IconThemeData(
        color: Colors.blue,
      ),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    dividerColor: Colors.white,
    primaryColor: Colors.blue,
    primaryColorDark: Colors.blue[700],
    bottomSheetTheme:
    BottomSheetThemeData(backgroundColor: darkBackgroundColor),
    shadowColor: Colors.white,
    bottomAppBarColor: Color(0xff1F242B),
    scaffoldBackgroundColor: darkBackgroundColor,
    iconTheme: IconThemeData(color: Colors.white),
    buttonColor: Colors.black,
    textTheme: TextTheme(
      headline1: TextStyle(
        color: darkTextColor,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      headline2: TextStyle(
          color: darkTextColor, fontWeight: FontWeight.bold, fontSize: 22),
      headline3: TextStyle(
          color: darkTextColor, fontWeight: FontWeight.bold, fontSize: 20),
      headline4: TextStyle(fontSize: 18, color: darkTextColor),
      headline5: TextStyle(color: darkTextColor, fontSize: 16),
      headline6: TextStyle(
        color: darkTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
      caption: TextStyle(color: darkTextColor, fontSize: 8),
      subtitle2: TextStyle(color: darkTextColor, fontSize: 12),
      subtitle1: TextStyle(color: darkTextColor, fontSize: 10),
      button: TextStyle(color: darkTextColor, fontSize: 12),
      bodyText1: TextStyle(fontSize: 12, color: darkTextColor),
      bodyText2: TextStyle(fontSize: 10, color: darkTextColor),
    ),
  );
}
