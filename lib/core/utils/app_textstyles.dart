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
}
