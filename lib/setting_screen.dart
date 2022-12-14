import 'package:accura_task/core/app_colors.dart';
import 'package:accura_task/core/components/doctor&assistant_setting.dart';
import 'package:accura_task/core/components/laboratory&ray_center_setting.dart';
import 'package:accura_task/core/components/pharmacy_setting.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreen extends StatefulWidget {
  String? userType;
  SettingScreen({this.userType});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    if (widget.userType == 'doctor' || widget.userType == 'assistant') {
      return doctorAndAssestantSetting();
    } else if (widget.userType == 'pharmacy') {
      return pharmacySetting();
    } else if (widget.userType == 'laboratory' || widget.userType == 'ray_center') {
      return laboratoryAndRayCenterSetting();
    }
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Text('Please Choose User',
            style: GoogleFonts.getFont('Poppins',
                fontSize: 16, color: AppColors.white)),
      ),
    );
  }
}
