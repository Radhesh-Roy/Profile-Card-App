import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/custom_button.dart';

class ProfileViewPage extends StatefulWidget {
  const ProfileViewPage({super.key});

  @override
  State<ProfileViewPage> createState() => _ProfileViewPageState();
}

class _ProfileViewPageState extends State<ProfileViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Student Profile", style: TextStyle(fontSize: 25.h, fontWeight: FontWeight.w600, color: Colors.white ),),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                      height: 100.h,
                      width: 100.w,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.3),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Icon(Icons.person, size: 60, color: Colors.grey,),
                            Positioned(
                                top: -15.h,
                                right: -20.h,
                                child: Badge(
                                  padding: EdgeInsets.symmetric(vertical: 1, horizontal: 5),
                                  label: Text("new"), )
                            )
                          ],
                        )

                      ),
                    ),
                Text("Radhesh Roy", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13.sp),),
                Text("ID: 42240302018",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 9.sp, color: Colors.grey),),
                Text("Computer Science and Engineering",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 9.sp, color: Colors.grey),),
               // CustomButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

