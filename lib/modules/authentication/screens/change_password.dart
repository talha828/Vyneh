import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:kaar_app/modules/authentication/screens/login.dart';
import 'package:velocity_x/velocity_x.dart';

class Change_Password_Screen extends StatefulWidget {
  const Change_Password_Screen({super.key});

  @override
  State<Change_Password_Screen> createState() => _Change_Password_ScreenState();
}

class _Change_Password_ScreenState extends State<Change_Password_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Change Password')),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 80),
        Text('Current Password').text.bold.size(20).make(),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter Password',
            border: OutlineInputBorder()
          ),
        ).py12(),
        Text('New Password').text.bold.size(20).make(),
              TextField(
          decoration: InputDecoration(
            hintText: 'New Password',
            border: OutlineInputBorder()
          ),
        ).py12(),
        Text('Re-enter Password').text.bold.size(20).make(),
              TextField(
          decoration: InputDecoration(
            hintText: 'Re-enter Password',
            border: OutlineInputBorder()
          ),
        ).py12(),
        
      ],
    ).px20(),
    bottomNavigationBar:Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text('Change Password').text.white.bold.size(20).make().centered(),
          ).py12().px(20).onTap(() {Get.to(LoginScreen());}),
    );
  }
}