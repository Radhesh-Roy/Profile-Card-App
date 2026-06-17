import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.3),
                child: Icon(Icons.person, size: 30, color: Colors.grey,),),
              Text("Radhesh Roy", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),)
            ],
          ),
        ),
      ),
    );
  }
}
