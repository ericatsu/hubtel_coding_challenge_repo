import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static const double designScreenWidth = 375;
  static const double designScreenHeight = 812;

  static const double smallFontSize = 9;
  static const double mediumFontSize = 10.5;
  static const double largeFontSize = 13;
  static const double floatSize = 11;
  static const double extraLargeFontSize = 19;

  static TextStyle nunitoSansExtraboldSmall(BuildContext context, {Color color = Colors.black}) =>
      GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: getResponsiveFontSize(context, smallFontSize),
          fontWeight: FontWeight.w800,
          color: color,
        ),
      );

  static TextStyle nunitoSansExtraboldLarge(BuildContext context,
          {Color color = Colors.black}) =>
      GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: getResponsiveFontSize(context, largeFontSize),
          fontWeight: FontWeight.w800,
          color: color,
        ),
      );

  static TextStyle nunitoSansExtraboldExtraLarge(BuildContext context,
          {Color color = Colors.black}) =>
      GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: getResponsiveFontSize(context, extraLargeFontSize),
          fontWeight: FontWeight.w800,
          color: color,
        ),
      );

  static TextStyle nunitoSansRegularSmall(BuildContext context,
          {Color color = Colors.black}) =>
      GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: getResponsiveFontSize(context, smallFontSize),
          fontWeight: FontWeight.w400,
          color: color,
        ),
      );

  static TextStyle nunitoSansRegularMedium(BuildContext context,
          {Color color = Colors.black}) =>
      GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: getResponsiveFontSize(context, mediumFontSize),
          fontWeight: FontWeight.w400,
          color: color,
        ),
      );

  static TextStyle nunitoSansRegularLarge(BuildContext context,
          {Color color = Colors.black}) =>
      GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: getResponsiveFontSize(context, largeFontSize),
          fontWeight: FontWeight.w500,
          color: color,
        ),
      );

      static TextStyle float(BuildContext context,
          {Color color = Colors.black}) =>
      GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: getResponsiveFontSize(context, floatSize),
          fontWeight: FontWeight.w800,
          color: color,
        ),
      );

  static double getResponsiveWidth(BuildContext context, double designWidth) {
    return MediaQuery.of(context).size.width * (designWidth / designScreenWidth);
  }

  static double getResponsiveHeight(BuildContext context, double designHeight) {
    return MediaQuery.of(context).size.height * (designHeight / designScreenHeight);
  }

  static double getResponsiveFontSize(BuildContext context, double fontSize) {
    double scaleFactor = MediaQuery.of(context).size.width / designScreenWidth;
    return fontSize * scaleFactor;
  }

  static double iconSize(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.07;
  }

  static double circleSize(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.10;
  }
}
