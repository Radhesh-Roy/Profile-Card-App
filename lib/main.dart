import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_card/profile_card_view/profile_simmer.dart';
import 'package:profile_card/profile_card_view/profile_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Student Card",
          initialRoute: "/cardview",
          routes: {
            "/cardview":(context)=> ProfileViewPage(),
            "/simmer":(context)=> ProfileSimmer(),
          },
        );
      },
    );
  }
}
