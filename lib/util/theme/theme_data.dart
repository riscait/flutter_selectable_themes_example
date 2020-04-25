import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final ThemeData simpleLightTheme =
    ThemeData.from(colorScheme: const ColorScheme.light());

final ThemeData simpleDarkTheme =
    ThemeData.from(colorScheme: const ColorScheme.dark());

ThemeData get lightGreenTheme {
  final primaryColor = Colors.lightGreen[800];
  const secondaryColor = Colors.green;
  return ThemeData.from(
    colorScheme: const ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    ),
  ).copyWith(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    accentColor: secondaryColor,
    buttonColor: primaryColor,
    buttonTheme: ButtonThemeData(
      buttonColor: primaryColor,
    ),
    iconTheme: const IconThemeData(
      color: secondaryColor,
    ),
  );
}

ThemeData get darkGreenTheme {
  final primaryColor = Colors.lightGreen[800];
  const secondaryColor = Colors.lightGreen;
  return ThemeData.from(
    colorScheme: const ColorScheme.dark().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    ),
  ).copyWith(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    accentColor: secondaryColor,
    buttonColor: primaryColor,
    buttonTheme: ButtonThemeData(
      buttonColor: primaryColor,
    ),
    iconTheme: const IconThemeData(
      color: secondaryColor,
    ),
    toggleableActiveColor: secondaryColor,
    cupertinoOverrideTheme: const CupertinoThemeData(
      textTheme: CupertinoTextThemeData(),
    ),
  );
}

ThemeData get makoGreenTheme {
  const primaryColor = Color(0xFF68D4C7);
  const secondaryColor = Color(0xFF40CCBB);
  return ThemeData.from(
    colorScheme: const ColorScheme.dark().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    ),
  ).copyWith(
    brightness: Brightness.dark,
    primaryColor: secondaryColor,
    accentColor: primaryColor,
    buttonColor: secondaryColor,
    buttonTheme: const ButtonThemeData(
      buttonColor: secondaryColor,
    ),
    iconTheme: const IconThemeData(
      color: primaryColor,
    ),
    toggleableActiveColor: primaryColor,
    cupertinoOverrideTheme: const CupertinoThemeData(
      textTheme: CupertinoTextThemeData(),
    ),
  );
}
