import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './dimensions.dart';

class AppColors {
  static Color mainColor = const Color(0xFFeeedf2);
  static Color whiteColor = const Color(0xFFFFFFFF);
  static Color blackColor = const Color(0xFF000000);
  static Color blueColor = const Color(0xFF64B5F6);
  static Color orangeColor = const Color(0xFFF37867);
  static Color textColor = const Color(0xFF616161);
  static Color localPrimary = const Color(0xFF687daf);
  static Color localTextColor = const Color(0xFF3b3b3b);
  static Color localBackgroundColor = const Color(0xFFeeedf2);
  static Color localYellowColor = const Color(0xFFd2bdd6);

  static TextStyle textStyle1 = GoogleFonts.abel(
    fontSize: Dimensions.height20,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle textStyle2 = GoogleFonts.sourceSerifPro(
    fontSize: Dimensions.height20,
    fontStyle: FontStyle.italic,
    color: textColor,
  );
  static TextStyle headLineStyle1 = GoogleFonts.pacifico(
    fontSize: Dimensions.height35,
    color: blueColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle2 = GoogleFonts.acme(
    fontSize: Dimensions.height25,
    color: blackColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle3 = GoogleFonts.acme(
    fontSize: Dimensions.height20,
    color: blackColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle4 = GoogleFonts.akayaKanadaka(
    fontSize: Dimensions.height25,
    color: blueColor,
    fontWeight: FontWeight.bold,
  );
}
