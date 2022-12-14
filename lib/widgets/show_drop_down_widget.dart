import 'package:accura_task/core/app_colors.dart';
import 'package:accura_task/widgets/date_field.dart';
import 'package:accura_task/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../core/components/laboratory&ray_center_setting.dart';

class ShowDropDown extends StatefulWidget {
  const ShowDropDown({Key? key}) : super(key: key);

  @override
  State<ShowDropDown> createState() => _ShowDropDownState();
}

class _ShowDropDownState extends State<ShowDropDown> {
  TextEditingController discountController = TextEditingController();
  String dropdownValue = list.first;
  bool switchbutton = false;
  bool activeMode = false;
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return Padding(
        padding: EdgeInsets.all(4.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.w),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Activation',
                          style: GoogleFonts.getFont('Poppins',
                              fontSize: 14, color: AppColors.darkGrey)),
                      switchbutton?
                      Text('On',
                          style: GoogleFonts.getFont('Poppins',
                              fontSize: 14, color: AppColors.hintGrey))
                          :Text('Off',
                          style: GoogleFonts.getFont('Poppins',
                              fontSize: 14, color: AppColors.hintGrey)),
                    ],
                  ),
                  Spacer(),
                  FlutterSwitch(
                    inactiveColor: AppColors.grey,
                    activeColor: AppColors.darkBlue,
                    value: switchbutton,
                    onToggle: (val) {
                      setState(() {
                        switchbutton = val;
                      });
                      print(switchbutton);
                    },
                  ),
                ],
              ),
            ),
            orientation == Orientation.landscape
                ? Container(
              width: double.infinity,
              height: .1.h,
              color: AppColors.separatorColor,
            )
                : Container(
              width: double.infinity,
              height: .1.h,
              color: AppColors.separatorColor,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 4.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Pricing',
                      style: GoogleFonts.getFont('Poppins',
                          fontSize: 14, color: AppColors.darkGrey)),
                  SizedBox(height: 1.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('add price',
                          style: GoogleFonts.getFont('Poppins',
                              fontSize: 14, color: AppColors.darkGrey)),
                      Spacer(),
                      Container(
                        width: 30.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.h),
                            border:
                            Border.all(color: AppColors.grey, width: 1)),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                              EdgeInsets.only(left: 3.w, bottom: 1.1.h),
                              child: Container(
                                width: 10.w,
                                height: 5.h,
                                child: TextFormField(
                                  controller: discountController,
                                  readOnly: switchbutton ? false : true,
                                  decoration:
                                  InputDecoration(border: InputBorder.none),
                                ),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(right: 3.w),
                              child: Text('EGP',
                                  style: GoogleFonts.getFont('Poppins',
                                      fontSize: 16, color: AppColors.darkGrey)),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            orientation == Orientation.landscape
                ? Container(
              width: double.infinity,
              height: .1.h,
              color: AppColors.separatorColor,
            )
                : Container(
              width: double.infinity,
              height: .1.h,
              color: AppColors.separatorColor,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Working Time ',
                      style: GoogleFonts.getFont('Poppins',
                          fontSize: 14, color: AppColors.darkGrey)),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  orientation == Orientation.landscape
                      ? Container(
                    width: double.infinity,
                    height: 6.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.h),
                      border: Border.all(color: AppColors.grey, width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: DropdownButton<String>(
                              value: dropdownValue,
                              icon: Image.asset(
                                'assets/icons/back_arrorw.png',
                                color: AppColors.white,
                              ),
                              elevation: 16,
                              style: GoogleFonts.getFont('Poppins',
                                  fontSize: 14,
                                  color: AppColors.darkGrey),
                              underline: SizedBox(),
                              onChanged: (String? value) {
                                // This is called when the user selects an item.
                                setState(() {
                                  dropdownValue = value!;
                                });
                              },
                              items: list.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                            ),
                          ),
                          Tab(
                            icon: Image.asset(
                              'assets/icons/back_arrorw.png',
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                      : Container(
                    width: 90.w,
                    height: 6.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.h),
                      border: Border.all(color: AppColors.grey, width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: DropdownButton<String>(
                              value: dropdownValue,
                              icon: Image.asset(
                                'assets/icons/back_arrorw.png',
                                color: AppColors.white,
                              ),
                              elevation: 16,
                              style: GoogleFonts.getFont('Poppins',
                                  fontSize: 14,
                                  color: AppColors.darkGrey),
                              underline: SizedBox(),
                              onChanged: (String? value) {
                                // This is called when the user selects an item.
                                setState(() {
                                  dropdownValue = value!;
                                });
                              },
                              items: list.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                            ),
                          ),
                          Tab(
                            icon: Image.asset(
                              'assets/icons/back_arrorw.png',
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text('Day  Shift ',
                      style: GoogleFonts.getFont('Poppins',
                          fontSize: 14, color: AppColors.darkGrey)),
                  SizedBox(
                    height: .5.h,
                  ),
                  Row(
                    children: [
                      orientation == Orientation.landscape
                          ? Container(
                        width: 100.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.h),
                            border: Border.all(
                                color: AppColors.grey, width: 1)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 3.w, bottom: 1.1.h),
                              child: Container(
                                  width: 10.w,
                                  height: 5.h,
                                  child: dateField(text: 'From')),
                            ),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(right: 3.w),
                                child: Tab(
                                  icon: Image.asset(
                                    'assets/icons/time.png',
                                  ),
                                ))
                          ],
                        ),
                      )
                          : Container(
                        width: 43.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.h),
                            border: Border.all(
                                color: AppColors.grey, width: 1)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 3.w, bottom: 1.1.h),
                              child: Container(
                                  width: 10.w,
                                  height: 5.h,
                                  child: dateField(text: 'From')),
                            ),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(right: 3.w),
                                child: Tab(
                                  icon: Image.asset(
                                    'assets/icons/time.png',
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Spacer(),
                      orientation == Orientation.landscape
                          ? Container(
                        width: 100.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.h),
                            border: Border.all(
                                color: AppColors.grey, width: 1)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 3.w, bottom: 1.1.h),
                              child: Container(
                                  width: 10.w,
                                  height: 5.h,
                                  child: dateField(text: 'To')),
                            ),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(right: 3.w),
                                child: Tab(
                                  icon: Image.asset(
                                    'assets/icons/time.png',
                                  ),
                                ))
                          ],
                        ),
                      )
                          : Container(
                        width: 43.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.h),
                            border: Border.all(
                                color: AppColors.grey, width: 1)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 3.w, bottom: 1.1.h),
                              child: Container(
                                  width: 10.w,
                                  height: 5.h,
                                  child: dateField(text: 'To')),
                            ),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(right: 3.w),
                                child: Tab(
                                  icon: Image.asset(
                                    'assets/icons/time.png',
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text('Night  Shift ',
                      style: GoogleFonts.getFont('Poppins',
                          fontSize: 14, color: AppColors.darkGrey)),
                  SizedBox(
                    height: .5.h,
                  ),
                  Row(
                    children: [
                      orientation == Orientation.landscape
                          ? Container(
                        width: 100.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.h),
                            border: Border.all(
                                color: AppColors.grey, width: 1)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 3.w, bottom: 1.1.h),
                              child: Container(
                                  width: 10.w,
                                  height: 5.h,
                                  child: dateField(text: 'From')),
                            ),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(right: 3.w),
                                child: Tab(
                                  icon: Image.asset(
                                    'assets/icons/time.png',
                                  ),
                                ))
                          ],
                        ),
                      )
                          : Container(
                        width: 43.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.h),
                            border: Border.all(
                                color: AppColors.grey, width: 1)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 3.w, bottom: 1.1.h),
                              child: Container(
                                  width: 10.w,
                                  height: 5.h,
                                  child: dateField(text: 'From')),
                            ),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(right: 3.w),
                                child: Tab(
                                  icon: Image.asset(
                                    'assets/icons/time.png',
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Spacer(),
                      orientation == Orientation.landscape
                          ? Container(
                        width: 100.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.h),
                            border: Border.all(
                                color: AppColors.grey, width: 1)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 3.w, bottom: 1.1.h),
                              child: Container(
                                width: 10.w,
                                height: 5.h,
                                child: dateField(text: 'To'),
                              ),
                            ),
                            const Spacer(),
                            Padding(
                                padding: EdgeInsets.only(right: 3.w),
                                child: Tab(
                                  icon: Image.asset(
                                    'assets/icons/time.png',
                                  ),
                                ))
                          ],
                        ),
                      )
                          : Container(
                        width: 43.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.h),
                            border: Border.all(
                                color: AppColors.grey, width: 1)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 3.w, bottom: 1.1.h),
                              child: Container(
                                width: 10.w,
                                height: 5.h,
                                child: dateField(text: 'To'),
                              ),
                            ),
                            const Spacer(),
                            Padding(
                                padding: EdgeInsets.only(right: 3.w),
                                child: Tab(
                                  icon: Image.asset(
                                    'assets/icons/time.png',
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    width: 10.w,
                    height: 10.w,
                    decoration: BoxDecoration(
                      color: AppColors.darkBlue,
                      borderRadius: BorderRadius.circular(10.h),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: AppColors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            orientation == Orientation.landscape
                ? Container(
              width: double.infinity,
              height: .1.h,
              color: AppColors.separatorColor,
            )
                : Container(
              width: double.infinity,
              height: .1.h,
              color: AppColors.separatorColor,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Unavailability ',
                      style: GoogleFonts.getFont('Poppins',
                          fontSize: 14, color: AppColors.darkGrey)),
                  SizedBox(
                    height: .5.h,
                  ),
                  Row(
                    children: [
                      orientation == Orientation.landscape
                          ? Container(
                        width: 100.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.h),
                            border: Border.all(
                                color: AppColors.grey, width: 1)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 3.w, bottom: 1.1.h),
                              child: Container(
                                  width: 10.w,
                                  height: 5.h,
                                  child: dateField(text: 'From')),
                            ),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(right: 3.w),
                                child: Tab(
                                  icon: Image.asset(
                                    'assets/icons/time.png',
                                  ),
                                ))
                          ],
                        ),
                      )
                          : Container(
                        width: 43.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.h),
                            border: Border.all(
                                color: AppColors.grey, width: 1)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 3.w, bottom: 1.1.h),
                              child: Container(
                                  width: 10.w,
                                  height: 5.h,
                                  child: dateField(text: 'From')),
                            ),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(right: 3.w),
                                child: Tab(
                                  icon: Image.asset(
                                    'assets/icons/time.png',
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Spacer(),
                      orientation == Orientation.landscape
                          ? Container(
                        width: 100.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.h),
                            border: Border.all(
                                color: AppColors.grey, width: 1)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 3.w, bottom: 1.1.h),
                              child: Container(
                                  width: 10.w,
                                  height: 5.h,
                                  child: dateField(text: 'To')),
                            ),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(right: 3.w),
                                child: Tab(
                                  icon: Image.asset(
                                    'assets/icons/time.png',
                                  ),
                                ))
                          ],
                        ),
                      )
                          : Container(
                        width: 43.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.h),
                            border: Border.all(
                                color: AppColors.grey, width: 1)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 3.w, bottom: 1.1.h),
                              child: Container(
                                  width: 10.w,
                                  height: 5.h,
                                  child: dateField(text: 'To')),
                            ),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(right: 3.w),
                                child: Tab(
                                  icon: Image.asset(
                                    'assets/icons/time.png',
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10.w,
                        height: 10.w,
                        decoration: BoxDecoration(
                          color: AppColors.darkBlue,
                          borderRadius: BorderRadius.circular(10.h),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: AppColors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      Spacer(),
                      orientation == Orientation.landscape
                          ? Center(
                        child: defaultButton(
                            buttonName: 'Save Settings',
                            buttonWidth: 90.w,
                            buttonHeight: 6.h,
                            buttonColor: AppColors.darkBlue,
                            borderColor: AppColors.darkBlue,
                            textColor: AppColors.white,
                            ontap: () {}),
                      )
                          : defaultButton(
                          buttonName: 'Save Settings',
                          buttonWidth: 60.w,
                          buttonHeight: 6.h,
                          buttonColor: AppColors.darkBlue,
                          borderColor: AppColors.darkBlue,
                          textColor: AppColors.white,
                          ontap: () {})
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
