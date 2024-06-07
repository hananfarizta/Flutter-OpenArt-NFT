import 'package:flutter/material.dart';

double defaultMargin = 16.0;

class AppText {
  static const String fontFamily = "Epilogue";

  static const FontWeight thin = FontWeight.w100;
  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight black = FontWeight.w900;

  static const TextStyle displayRegularLarge = TextStyle(
      fontFamily: fontFamily, fontSize: 40, fontWeight: FontWeight.w400);
  static const TextStyle displayRegularMedium = TextStyle(
      fontFamily: fontFamily, fontSize: 32, fontWeight: FontWeight.w400);
  static const TextStyle displayRegularSmall = TextStyle(
      fontFamily: fontFamily, fontSize: 24, fontWeight: FontWeight.w400);
  static const TextStyle displayBoldLarge = TextStyle(
      fontFamily: fontFamily, fontSize: 40, fontWeight: FontWeight.w700);
  static const TextStyle displayBoldMedium = TextStyle(
      fontFamily: fontFamily, fontSize: 32, fontWeight: FontWeight.w700);
  static const TextStyle displayBoldSmall = TextStyle(
      fontFamily: fontFamily, fontSize: 24, fontWeight: FontWeight.w700);
  static const TextStyle textLarge = TextStyle(
      fontFamily: fontFamily, fontSize: 20, fontWeight: FontWeight.w400);
  static const TextStyle textMedium = TextStyle(
      fontFamily: fontFamily, fontSize: 16, fontWeight: FontWeight.w400);
  static const TextStyle textSmall = TextStyle(
      fontFamily: fontFamily, fontSize: 14, fontWeight: FontWeight.w400);
  static const TextStyle textXSmall = TextStyle(
      fontFamily: fontFamily, fontSize: 13, fontWeight: FontWeight.w400);
  static const TextStyle linkLarge = TextStyle(
      fontFamily: fontFamily, fontSize: 20, fontWeight: FontWeight.w700);
  static const TextStyle linkMedium = TextStyle(
      fontFamily: fontFamily, fontSize: 16, fontWeight: FontWeight.w700);
  static const TextStyle linkSmall = TextStyle(
      fontFamily: fontFamily, fontSize: 14, fontWeight: FontWeight.w700);
  static const TextStyle linkXSmall = TextStyle(
      fontFamily: fontFamily, fontSize: 13, fontWeight: FontWeight.w700);
}

class AppColors {
  static const Color primary = Color(0xff002EF1);
  static const Color secondary = Color(0xffFFB802);
  static const Color error = Color(0xffFE3F61);
  static const Color success = Color(0xff009846);
  static const Color warning = Color(0xffFF6711);

  static const Color gradientPrimaryStart = Color(0xff0000EB);
  static const Color gradientPrimaryEnd = Color(0xff004BFB);
  static const Color gradientSecondaryStart = Color(0xffFF9C00);
  static const Color gradientSecondaryEnd = Color(0xffFFDB03);
  static const Color gradientAccentStart = Color(0xff0038F5);
  static const Color gradientAccentEnd = Color(0xff9F03FF);

  static const LinearGradient gradientPrimary = LinearGradient(
    colors: [gradientPrimaryStart, gradientPrimaryEnd],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient gradientSecondary = LinearGradient(
    colors: [gradientSecondaryStart, gradientSecondaryEnd],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient gradientAccent = LinearGradient(
    colors: [gradientAccentStart, gradientAccentEnd],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

class AppColorGrayscale {
  static const Color titleActive = Color(0xff222222);
  static const Color body = Color(0xff333333);
  static const Color label = Color(0xff555555);
  static const Color placeholder = Color(0xff888888);
  static const Color line = Color(0xffDCDCDC);
  static const Color inputBackground = Color(0xffF0F0F0);
  static const Color background = Color(0xffF8F8F8);
  static const Color offWhite = Color(0xffFCFCFC);
}
