import 'package:accura_task/core/app_colors.dart';
import 'package:accura_task/widgets/show_drop_down_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class doctorAndAssestantSetting extends StatefulWidget {
  const doctorAndAssestantSetting({Key? key}) : super(key: key);

  @override

  State<doctorAndAssestantSetting> createState() =>
      _doctorAndAssistantSettingState();
}

class _doctorAndAssistantSettingState extends State<doctorAndAssestantSetting> {
  bool showClinkFields = false;
  bool showVideoCall = false;
  String dropIcon='assets/icons/back_arrorw.png';
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return Scaffold(
          backgroundColor: AppColors.white,
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.white,
                )),
            backgroundColor: AppColors.darkBlue,
            elevation: 0,
            centerTitle: true,
            title: Text('Setting',
                style: GoogleFonts.getFont('Poppins',
                    fontSize: 16, color: AppColors.white)),
          ),
          body: OrientationBuilder(builder: (context , orientation){
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          if(showClinkFields == true){
                            showClinkFields=false;
                            dropIcon = dropIcon;
                          }else{
                            showClinkFields = true;
                            dropIcon='assets/icons/back_arrorw.png';
                          }

                        });
                        print(showClinkFields);
                      },
                      child: orientation == Orientation.landscape
                          ? Container(
                        height: 7.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: showClinkFields ? AppColors.choosedElement :AppColors.white,
                            border: showClinkFields
                                ? Border.all(color: AppColors.choosedElementborder)
                                :Border.all(color: AppColors.white)
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.w),
                              child: Text('Clinc',
                                  style: GoogleFonts.getFont('Poppins',
                                      fontSize: 16,
                                      color: showClinkFields ?AppColors.darkBlue :AppColors.darkGrey
                                  )),
                            ),
                            Spacer(),
                            Image.asset(
                              showClinkFields
                                  ?'assets/icons/dropactiveicon.png'
                                  :'assets/icons/back_arrorw.png',
                              //  color: AppColors.darkGrey,
                            ),

                          ],
                        ),
                      )
                          : Container(
                        height: 7.h,
                        width: 98.w,
                        decoration: BoxDecoration(
                            color: showClinkFields ? AppColors.choosedElement :AppColors.white,
                            border: showClinkFields
                                ? Border.all(color: AppColors.choosedElementborder)
                                :Border.all(color: AppColors.white)
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.w),
                              child: Text('Clinc',
                                  style: GoogleFonts.getFont('Poppins',
                                      fontSize: 16,
                                      color: showClinkFields ?AppColors.darkBlue :AppColors.darkGrey
                                  )),
                            ),
                            Spacer(),
                            Image.asset(
                              showClinkFields
                                  ?'assets/icons/dropactiveicon.png'
                                  :'assets/icons/back_arrorw.png',
                              //  color: AppColors.darkGrey,
                            ),

                          ],
                        ),
                      )),
                  (showClinkFields == true)
                      ?const ShowDropDown()
                      :const SizedBox(),
                  SizedBox(height: 2.h,),
                  InkWell(
                      onTap: () {
                        setState(() {
                          if(showClinkFields == true){
                            showClinkFields=false;
                            dropIcon = dropIcon;
                          }else{
                            showClinkFields = true;
                            dropIcon='assets/icons/back_arrorw.png';
                          }

                        });
                        print(showClinkFields);
                      },
                      child: orientation == Orientation.landscape
                          ? Container(
                        height: 7.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: showClinkFields ? AppColors.choosedElement :AppColors.white,
                            border: showClinkFields
                                ? Border.all(color: AppColors.choosedElementborder)
                                :Border.all(color: AppColors.white)
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.w),
                              child: Text('Video Call',
                                  style: GoogleFonts.getFont('Poppins',
                                      fontSize: 16,
                                      color: showClinkFields ?AppColors.darkBlue :AppColors.darkGrey
                                  )),
                            ),
                            Spacer(),
                            Image.asset(
                              showClinkFields
                                  ?'assets/icons/dropactiveicon.png'
                                  :'assets/icons/back_arrorw.png',
                              //  color: AppColors.darkGrey,
                            ),

                          ],
                        ),
                      )
                          : Container(
                        height: 7.h,
                        width: 98.w,
                        decoration: BoxDecoration(
                            color: showClinkFields ? AppColors.choosedElement :AppColors.white,
                            border: showClinkFields
                                ? Border.all(color: AppColors.choosedElementborder)
                                :Border.all(color: AppColors.white)
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.w),
                              child: Text('Video Call',
                                  style: GoogleFonts.getFont('Poppins',
                                      fontSize: 16,
                                      color: showClinkFields ?AppColors.darkBlue :AppColors.darkGrey
                                  )),
                            ),
                            Spacer(),
                            Image.asset(
                              showClinkFields
                                  ?'assets/icons/dropactiveicon.png'
                                  :'assets/icons/back_arrorw.png',
                              //  color: AppColors.darkGrey,
                            ),

                          ],
                        ),
                      )),
                  (showClinkFields == true)
                      ?ShowDropDown()
                      :SizedBox(),
                  SizedBox(height: 2.h,),
                  InkWell(
                      onTap: () {
                        setState(() {
                          if(showClinkFields == true){
                            showClinkFields=false;
                            dropIcon = dropIcon;
                          }else{
                            showClinkFields = true;
                            dropIcon='assets/icons/back_arrorw.png';
                          }

                        });
                        print(showClinkFields);
                      },
                      child: orientation == Orientation.landscape
                          ? Container(
                        height: 7.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: showClinkFields ? AppColors.choosedElement :AppColors.white,
                            border: showClinkFields
                                ? Border.all(color: AppColors.choosedElementborder)
                                :Border.all(color: AppColors.white)
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.w),
                              child: Text('Voice Call',
                                  style: GoogleFonts.getFont('Poppins',
                                      fontSize: 16,
                                      color: showClinkFields ?AppColors.darkBlue :AppColors.darkGrey
                                  )),
                            ),
                            Spacer(),
                            Image.asset(
                              showClinkFields
                                  ?'assets/icons/dropactiveicon.png'
                                  :'assets/icons/back_arrorw.png',
                              //  color: AppColors.darkGrey,
                            ),

                          ],
                        ),
                      )
                          : Container(
                        height: 7.h,
                        width: 98.w,
                        decoration: BoxDecoration(
                            color: showClinkFields ? AppColors.choosedElement :AppColors.white,
                            border: showClinkFields
                                ? Border.all(color: AppColors.choosedElementborder)
                                :Border.all(color: AppColors.white)
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.w),
                              child: Text('Voice Call',
                                  style: GoogleFonts.getFont('Poppins',
                                      fontSize: 16,
                                      color: showClinkFields ?AppColors.darkBlue :AppColors.darkGrey
                                  )),
                            ),
                            Spacer(),
                            Image.asset(
                              showClinkFields
                                  ?'assets/icons/dropactiveicon.png'
                                  :'assets/icons/back_arrorw.png',
                              //  color: AppColors.darkGrey,
                            ),

                          ],
                        ),
                      )),
                  (showClinkFields == true)
                      ?ShowDropDown()
                      :SizedBox(),
                  SizedBox(height: 2.h,),
                  InkWell(
                      onTap: () {
                        setState(() {
                          if(showClinkFields == true){
                            showClinkFields=false;
                            dropIcon = dropIcon;
                          }else{
                            showClinkFields = true;
                            dropIcon='assets/icons/back_arrorw.png';
                          }

                        });
                        print(showClinkFields);
                      },
                      child: orientation == Orientation.landscape
                          ? Container(
                        height: 7.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: showClinkFields ? AppColors.choosedElement :AppColors.white,
                            border: showClinkFields
                                ? Border.all(color: AppColors.choosedElementborder)
                                :Border.all(color: AppColors.white)
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.w),
                              child: Text('On The Spot',
                                  style: GoogleFonts.getFont('Poppins',
                                      fontSize: 16,
                                      color: showClinkFields ?AppColors.darkBlue :AppColors.darkGrey
                                  )),
                            ),
                            Spacer(),
                            Image.asset(
                              showClinkFields
                                  ?'assets/icons/dropactiveicon.png'
                                  :'assets/icons/back_arrorw.png',
                              //  color: AppColors.darkGrey,
                            ),

                          ],
                        ),
                      )
                          : Container(
                        height: 7.h,
                        width: 98.w,
                        decoration: BoxDecoration(

                            color: showClinkFields ? AppColors.choosedElement :AppColors.white,
                            border: showClinkFields
                                ? Border.all(color: AppColors.choosedElementborder)
                                :Border.all(color: AppColors.white)
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.w),
                              child: Text('On The Spot',
                                  style: GoogleFonts.getFont('Poppins',
                                      fontSize: 16,
                                      color: showClinkFields ?AppColors.darkBlue :AppColors.darkGrey
                                  )),
                            ),
                            Spacer(),
                            Image.asset(
                              showClinkFields
                                  ?'assets/icons/dropactiveicon.png'
                                  :'assets/icons/back_arrorw.png',
                              //  color: AppColors.darkGrey,
                            ),

                          ],
                        ),
                      )),
                  (showClinkFields == true)
                      ?ShowDropDown()
                      :SizedBox(),
                ],
              ),
            );
          },)

      );
    });
  }
}
