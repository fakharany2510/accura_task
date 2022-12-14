import 'package:accura_task/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

Widget defaultButton({
  required String buttonName,
  required double buttonWidth,
  required double buttonHeight,
  required Color buttonColor,
  required Color borderColor,
  required Color textColor,
  required VoidCallback ontap,
}) =>
    Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10.h),
          border: Border.all(color: borderColor, width: 1)),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.h),
        focusColor: AppColors.grey,
        onTap:ontap,
        child: Center(
          child: Text(buttonName,
              style: GoogleFonts.getFont('Poppins',
                  fontSize: 20, color: textColor)),
        ),
      ),
    );
