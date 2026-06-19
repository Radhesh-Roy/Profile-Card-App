import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_card/profile_card_view/profile_simmer.dart';

import '../widget/custom_button.dart';

class ProfileViewPage extends StatefulWidget {
  const ProfileViewPage({super.key});
  @override
  State<ProfileViewPage> createState() => _ProfileViewPageState();
}
class _ProfileViewPageState extends State<ProfileViewPage> {
  bool isTrue=true;

  viewShimmer()async{
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      isTrue=false;
    });

  }
  
  @override
  void initState() {
    viewShimmer();
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Student Profile", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600, color: Colors.white ),),
        centerTitle: true,
      ),
      body: isTrue==true?ProfileSimmer():Center(
        child: Card(
          color: Color(0xffEDF2FA),
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
                SizedBox(height: 5,),
                Text("Radhesh Roy", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13.sp),),
                SizedBox(height: 5,),
                Text("ID: 42240302018",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 9.sp, color: Colors.grey),),
                SizedBox(height: 5,),
                Text("Computer Science and Engineering",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 9.sp, color: Colors.grey),),
                SizedBox(height: 10,),
                InkWell(
                    onTap: (){
                     showDialog(
                       barrierDismissible: false,
                       context:context, builder: (context) {
                       return AlertDialog(
                         title: Text("Student Details", style: TextStyle(fontSize: 20.sp),),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.person, size: 12.sp,),
                                  SizedBox(width: 5,),
                                  RichText(text: TextSpan(
                                    text: "Name: ",
                                    style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w700),
                                    children: [
                                      TextSpan(
                                        text: "Radhesh Roy",
                                        style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),

                                      )
                                    ]
                                  ))
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Icon(Icons.shopping_bag, size: 12.sp,),
                                  SizedBox(width: 5,),
                                  RichText(text: TextSpan(
                                      text: "ID: ",
                                      style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w700),
                                      children: [
                                        TextSpan(
                                          text: "42240302018",
                                          style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),

                                        )
                                      ]
                                  ))
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Icon(Icons.history_edu, size: 12.sp,),
                                  SizedBox(width: 5,),
                                  RichText(text: TextSpan(
                                      text: "Dept: ",
                                      style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w700),
                                      children: [
                                        TextSpan(
                                          text: "Computer Science and Engineering",
                                          style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),

                                        )
                                      ]
                                  ))
                                ],
                              ),
                            ],
                          ),
                         actions: [
                           SizedBox(
                             height:30.h,
                             width: 70.w,
                             child: ElevatedButton(
                                 style: ElevatedButton.styleFrom(
                                   elevation: 0,
                                   overlayColor:Colors.transparent,
                                 ),
                                 onPressed: (){
                               Navigator.pop(context);
                             },
                                 child: Text("Cancel", style: TextStyle(fontSize: 8.sp),)),
                           )
                         ],
                       );
                     },);
                    },
                    child: CustomButton(title: 'View Profile', icon: Icons.description, buttonColor: Colors.blue, textColor: Colors.white,)),
                SizedBox(height: 10,),
                InkWell(
                    onTap: (){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Radhesh Roy mark as present ✅")));
                    },
                    child: CustomButton(title: 'Mark Present', icon: Icons.check_circle_outline, buttonColor: Colors.grey.shade300, textColor: Colors.black,))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

