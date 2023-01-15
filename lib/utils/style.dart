import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

///
/// Colors
///

const Color royalBlue = Color(0xff6A5AE0);
const Color dullLavender = Color(0xff9087E5);
const Color pinkSalmon = Color(0xffFF8FA2);
const Color hintTextFieldColor = Color.fromRGBO(193, 194, 202, 1.0);
const Color whiteColor = Color(0xFFFFFFFF);
const Color greyColor = Color(0xFF0C092A);
const Color medianGreyColor = Color(0xFF999999);
const Color grey100 = Color(0xFFEFEEFC);
const Color skipColor = Color(0xFF757575);
const Color yellowPrimaryColor = Color(0xFFFFB600);
const Color textButtonBlackColor = Color(0xFF121212);
const Color containerDarkGreyColor = Color(0xFFF3F5F7);
const Color darkGreyColor = Color(0xFF676464);
const Color borderPinColor = Color(0xFFE3E3E3);

///
/// Text Style
///
const TextStyle appBarTextStyle =
    TextStyle(fontFamily: "Dubai", fontSize: 24, color: greyColor);
const TextStyle titleTextFieldStyle =
    TextStyle(fontFamily: "Dubai", fontSize: 14, color: greyColor);
const TextStyle titleTextFieldStyleRoyalBlue =
    TextStyle(fontFamily: "Dubai", fontSize: 14, color: royalBlue);
const TextStyle hintTextFieldStyle =
    TextStyle(fontFamily: "Dubai", fontSize: 16, color: medianGreyColor);
const TextStyle buttonTextFieldStyle =
    TextStyle(fontFamily: "Dubai", fontSize: 16, color: whiteColor);
const TextStyle drawerTextStyle =
    TextStyle(fontFamily: "Dubai", fontSize: 20, color: Color(0xffFFD6DD));

TextStyle get kTitleStyle {
  return GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
    ),
  );
}

TextStyle get kHeadingStyle {
  return GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w500,
      color: textButtonBlackColor,
    ),
  );
}

TextStyle get kSubTitleStyle {
  return GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Color(0xff121212),
    ),
  );
}

TextStyle get kSubTitle2Style {
  return GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: darkGreyColor,
    ),
  );
}

TextStyle get kButtonTextStyle {
  return GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: textButtonBlackColor,
    ),
  );
}
