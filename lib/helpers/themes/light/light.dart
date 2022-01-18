import 'package:flutter/material.dart'
    show
        AppBarTheme,
        BorderRadius,
        BoxDecoration,
        Brightness,
        Colors,
        EdgeInsets,
        FloatingLabelBehavior,
        FontWeight,
        IconThemeData,
        InputDecorationTheme,
        OutlineInputBorder,
        Radius,
        TextStyle,
        ThemeData,
        VisualDensity;
import 'package:flutter/services.dart' show Brightness, SystemUiOverlayStyle;
import 'package:flutter_kick_start/helpers/constants/constants.dart' show kLightPrimaryColor, white;
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;

SystemUiOverlayStyle lightUiConfig = SystemUiOverlayStyle(
  systemNavigationBarIconBrightness: Brightness.dark,
  systemNavigationBarColor: kLightPrimaryColor,
  statusBarIconBrightness: Brightness.dark,
  statusBarColor: kLightPrimaryColor,
);

ThemeData lightTheme = ThemeData(
  appBarTheme: lightAppBarTheme,
  backgroundColor: white,
  fontFamily: GoogleFonts.droidSans().fontFamily,
  iconTheme: lightIconThemeData,
  inputDecorationTheme: lightInputDecorationTheme,
  scaffoldBackgroundColor: white,
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

AppBarTheme lightAppBarTheme = AppBarTheme(
  elevation: 0.0,
  backgroundColor: kLightPrimaryColor,
  titleTextStyle: const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
);

IconThemeData lightIconThemeData = IconThemeData(color: kLightPrimaryColor);

InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
  floatingLabelBehavior: FloatingLabelBehavior.always,
  contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
  enabledBorder: lightOutlineInputBorder,
  focusedBorder: lightOutlineInputBorder,
  border: lightOutlineInputBorder,
);

OutlineInputBorder lightOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(6.0),
  gapPadding: 10,
);

const BoxDecoration lightTabDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(6.0)),
);
