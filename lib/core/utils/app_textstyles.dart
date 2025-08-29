import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextstyles {
  static final TextStyle style15orgL = GoogleFonts.poppins(
      fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.orangecolor);

  static final TextStyle style24orgI = GoogleFonts.poppins(
      fontSize: 24, fontWeight: FontWeight.w900, color: AppColors.orangecolor);
  static TextStyle style14blackfont = GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.blackfont);
  static final TextStyle style17weightcolor = GoogleFonts.poppins(
      fontSize: 17, fontWeight: FontWeight.w500, color: AppColors.whitefont);
  static final TextStyle styleauth = GoogleFonts.poppins(
      fontSize: 28, fontWeight: FontWeight.w700, color: AppColors.whitefont);
  static final TextStyle style24blackfont = GoogleFonts.poppins(
      fontSize: 24, fontWeight: FontWeight.w600, color: AppColors.blackfont);
  static final TextStyle stylesuptitle = GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w300, color: AppColors.blackfont);
  static final TextStyle style20w500 = GoogleFonts.poppins(
      fontSize: 20, fontWeight: FontWeight.w500, color: AppColors.blackfont);


  static final TextStyle style20OrangeW500 = GoogleFonts.poppins(
      fontSize: 20, fontWeight: FontWeight.w500, color: AppColors.orangecolor);

  static final TextStyle style12BlackW300 = GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w300, color: AppColors.blackfont);

  static final TextStyle style16OrangeW500 = GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.orangecolor);

  static final TextStyle style28WhiteW700 = GoogleFonts.poppins(
      fontSize: 28, fontWeight: FontWeight.w700, color: AppColors.whitefont);

  static final TextStyle style20w700white = GoogleFonts.poppins(
      fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.whitefont);

   static final TextStyle style20w500white = GoogleFonts.poppins(
      fontSize: 20, fontWeight: FontWeight.w500, color: AppColors.whitefont);

  static final TextStyle style12w300grey = GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w300, color: AppColors.grey);
  static final TextStyle style12w400black = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.blackfont,
  );
  static final TextStyle style12w500org = GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.orangecolor);
  static final TextStyle style12w400white = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.whitefont,
  );
}
