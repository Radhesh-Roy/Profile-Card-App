import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color buttonColor, color;
  final IconData icon;
  const CustomButton({
    super.key, required this.title, required this.color, required this.icon, required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 200.w,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 13.sp, color: Colors.white,),
          SizedBox(width: 7,),
          Text("$title",style: TextStyle(fontSize: 10.sp, color: Colors.white, fontWeight: FontWeight.w400),)
        ],
      ),
    );
  }
}