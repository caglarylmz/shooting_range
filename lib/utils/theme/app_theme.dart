import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shooting_range/utils/theme/customs/page%20_transitions_theme.dart';
import 'package:shooting_range/utils/theme/customs/text_button_theme.dart';
import 'package:shooting_range/utils/theme/customs/text_form_field_theme.dart';

import 'customs/app_bar_theme.dart';
import 'customs/bottom_sheet_theme.dart';
import 'customs/checkbox_theme.dart';
import 'customs/chip_theme.dart';
import 'customs/elevated_button_theme.dart';
import 'customs/outlined_button_theme.dart';
import 'customs/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: GoogleFonts.poppins().fontFamily,
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      //scaffoldBackgroundColor: Colors.white,
      textTheme: CTextTheme.light,
      elevatedButtonTheme: CElevatedButtonTheme.light,
      textButtonTheme: CTextButtonTheme.light,
      appBarTheme: CAppBarTheme.light,
      bottomSheetTheme: CButtonSheetTheme.light,
      checkboxTheme: CCheckBoxTheme.light,
      chipTheme: CChipTheme.light,
      outlinedButtonTheme: COutlinedButtonTheme.light,
      inputDecorationTheme: CTextFormFieldTheme.light,
      pageTransitionsTheme: CPageTransitionsTheme.pageTransitionsTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily:  GoogleFonts.poppins().fontFamily,
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      //scaffoldBackgroundColor: Colors.black,
      textTheme: CTextTheme.dark,
      elevatedButtonTheme: CElevatedButtonTheme.dark,
      textButtonTheme: CTextButtonTheme.dark,
      appBarTheme: CAppBarTheme.dark,
      bottomSheetTheme: CButtonSheetTheme.dark,
      checkboxTheme: CCheckBoxTheme.dark,
      chipTheme: CChipTheme.dark,
      outlinedButtonTheme: COutlinedButtonTheme.dark,
      inputDecorationTheme: CTextFormFieldTheme.dark,
      pageTransitionsTheme: CPageTransitionsTheme.pageTransitionsTheme);
}
