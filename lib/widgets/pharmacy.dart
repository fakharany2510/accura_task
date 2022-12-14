import 'package:accura_task/core/app_colors.dart';
import 'package:accura_task/setting_screen.dart';
import 'package:accura_task/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget pharmace(context) => defaultButton(
      buttonName: 'Pharmacy',
      buttonWidth: 90.w,
      buttonHeight: 6.h,
      buttonColor: AppColors.white,
      borderColor: AppColors.grey,
      textColor: AppColors.blue,
      ontap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SettingScreen(
                      userType: 'pharmacy',
                    )));
      },
    );
