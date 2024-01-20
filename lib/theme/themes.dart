import 'package:flutter/material.dart';

const Color primaryColor = Color(0xff4c53a5);
const secondaryColor = Color(0xffEDECF2);

const TextTheme textTheme = TextTheme(
  bodySmall: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: primaryColor,
  ),
  bodyMedium: TextStyle(
    fontSize: 17,
    color: primaryColor,
  ),
  titleLarge: TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: primaryColor,
  ),
  titleMedium: TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.bold,
    color: primaryColor,
  ),
);

ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    foregroundColor: Colors.white,
    backgroundColor: primaryColor,
    padding: const EdgeInsets.symmetric(
      vertical: 13,
      horizontal: 15,
    ),
  ),
);

final ThemeData theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor)
        .copyWith(background: secondaryColor),
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme,
    elevatedButtonTheme: elevatedButtonTheme);
