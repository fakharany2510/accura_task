import 'package:accura_task/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget dateField({
  required String text,
})=>Padding(
  padding: const EdgeInsets.only(top: 10),
  child: Text(text,
      style: GoogleFonts.getFont('Poppins',
          fontSize: 14, color: AppColors.darkGrey)),
);