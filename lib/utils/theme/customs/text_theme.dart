import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shooting_range/utils/consts/colors.dart';

class CTextTheme {
  CTextTheme._();

  static final TextTheme light = GoogleFonts.poppinsTextTheme()
      .apply(bodyColor: AppColors.dark, displayColor: AppColors.darkestGrey);
  static final TextTheme dark = GoogleFonts.poppinsTextTheme()
      .apply(bodyColor: AppColors.light, displayColor: AppColors.softGrey);
}
