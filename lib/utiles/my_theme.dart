import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class MyTheme {
  static final ThemeData myTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      titleMedium: GoogleFonts.inter(
        color: AppColors.primaryColor,
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: GoogleFonts.inter(
        color: AppColors.primaryColor,
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: GoogleFonts.inter(
        color: AppColors.primaryColor,
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
