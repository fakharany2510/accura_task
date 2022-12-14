import 'package:accura_task/core/app_colors.dart';
import 'package:accura_task/widgets/assistant.dart';
import 'package:accura_task/widgets/doctor.dart';
import 'package:accura_task/widgets/laboratory.dart';
import 'package:accura_task/widgets/pharmacy.dart';
import 'package:accura_task/widgets/ray_center.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 15.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text('You are a ...',
                    style: GoogleFonts.getFont('Poppins',
                        fontSize: 31, color: AppColors.blue)),
              ),
              SizedBox(
                height: 3.h,
              ),
             doctor(context),
              SizedBox(
                height: 2.h,
              ),
              assistant(context),
              SizedBox(
                height: 2.h,
              ),
              pharmace(context),
              SizedBox(
                height: 2.h,
              ),
              laboratory(context),
              SizedBox(
                height: 2.h,
              ),
              rayCenter(context),
            ],
          ),
        ),
      ),
    );
  }
}
