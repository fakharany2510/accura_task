import 'package:accura_task/choose_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder:( context , orientation , deviceType){
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: ChooseScreen(),
        );
      }
    );


  }
}
