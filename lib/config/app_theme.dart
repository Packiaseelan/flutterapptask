import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Color(0xFF96D141);
  static const secondaryColor = Color(0xFF1F8FCA);
  static const darkGray = Color(0xFF979797);
  static const grey = Color(0xFFACACAC);
  static const white = Color(0xFFFFFFFF);
  static const red = Color(0xFFDB3022);
  static const lightGray = Color(0xFF9B9B9B);
  static const orange = Color(0xFFFFBA49);
  static const background = Color(0xFFFFFFFF);
  static const backgroundLight = Color(0xFFF9F9F9);
  static const black = Color(0xFF000000);
  static const success = Color(0xFF2AA952);
  static const disable = Color(0xFF929794);
  static const primaryTextColor = Color(0xFF000000);
  static const primaryTextColorLight = Color(0xFF595959);
  static const chipColor = Color.fromARGB(255, 255, 244, 202);// Color(0XFFFFBF0033);
  static const searchBorderColor = Color(0XFFFCDB7A);
  static const yellow = Color(0XFFFFBF00);

  static ThemeData of(context) {
    var theme = Theme.of(context);
    return theme.copyWith(
      primaryColor: primaryColor,
      primaryColorLight: lightGray,
      accentColor: secondaryColor,
      bottomAppBarColor: lightGray,
      backgroundColor: background,
      scaffoldBackgroundColor: background,
      dialogBackgroundColor: backgroundLight,
      errorColor: red,
      dividerColor: Colors.transparent,
      appBarTheme: theme.appBarTheme.copyWith(
        backgroundColor: black,
        iconTheme: IconThemeData(color: white),
        textTheme: theme.textTheme.copyWith(
          caption: TextStyle(
              color: white,
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
      ),
      textTheme: theme.textTheme.copyWith(
          headline1: TextStyle(
            color: primaryTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
          headline2: TextStyle(
            color: primaryTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
          headline3: TextStyle(
            color: primaryTextColor,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
          headline5: TextStyle(
            color: primaryTextColor,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
          headline6: TextStyle(
            color: primaryTextColor,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
          subtitle1: TextStyle(
            color: primaryTextColor,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          subtitle2: TextStyle(
            color: primaryTextColor,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          bodyText1: TextStyle(
            color: primaryTextColor,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          bodyText2: TextStyle(
            color: primaryTextColor,
            fontWeight: FontWeight.w500,
            fontSize: 10,
          ),
          button: TextStyle(
            color: primaryTextColor,
            letterSpacing: 1.7,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          caption: TextStyle(
            color: primaryTextColor.withOpacity(0.70),
            fontWeight: FontWeight.w400,
            fontSize: 10,
          )),
      buttonTheme: theme.buttonTheme.copyWith(
        minWidth: 50,
        buttonColor: primaryColor,
      ),
    );
  }
}
