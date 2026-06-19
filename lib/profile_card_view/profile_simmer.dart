import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../widget/custom_button.dart';

class ProfileSimmer extends StatefulWidget {
  const ProfileSimmer({super.key});
  @override
  State<ProfileSimmer> createState() => _ProfileSimmerState();
}

class _ProfileSimmerState extends State<ProfileSimmer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Card(
          color: Color(0xffEDF2FA),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Shimmer.fromColors(
                  baseColor: Colors.grey,
                  highlightColor: Colors.grey.shade100,
                  child: SizedBox(
                    height: 100.h,
                    width: 100.w,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(0.5),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            SizedBox(
                              height: 60,
                              width: 60,
                            ),
                            Positioned(
                                top: -15.h,
                                right: -20.h,
                                child: Badge(
                                  padding: EdgeInsets.symmetric(vertical: 1, horizontal: 5),
                                  label: Text("New"), )
                            )
                          ],
                        )

                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Shimmer.fromColors(
                    baseColor: Colors.grey.withOpacity(0.5),
                    highlightColor: Colors.grey.shade100,
                    child: Container(
                      height: 20.h,
                      width: 100.w,
                      color: Colors.grey.shade200,
                    )),
                SizedBox(height: 5,),
                Shimmer.fromColors(
                    baseColor: Colors.grey.withOpacity(0.5),
                    highlightColor: Colors.grey.shade100,
                    child: Container(
                      height: 20.h,
                      width: 80.w,
                      color: Colors.grey.shade200,
                    )),
                SizedBox(height: 5,),
                Shimmer.fromColors(
                    baseColor: Colors.grey.withOpacity(0.5),
                    highlightColor: Colors.grey.shade100,
                    child: Container(
                      height: 20.h,
                      width: 130.w,
                      color: Colors.grey.shade200,
                    )),
                SizedBox(height: 10,),
                Shimmer.fromColors(
                    baseColor: Colors.grey.withOpacity(0.5),
                    highlightColor: Colors.grey.shade100,
                    child: Container(
                      height: 40.h,
                      width: 200.w,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)
                      ),
                    )),
                SizedBox(height: 10,),
                Shimmer.fromColors(
                    baseColor: Colors.grey.withOpacity(0.5),
                    highlightColor: Colors.grey.shade100,
                    child: Container(
                      height: 40.h,
                      width: 200.w,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
