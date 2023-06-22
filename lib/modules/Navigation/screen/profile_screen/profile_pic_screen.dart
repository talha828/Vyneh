// ignore_for_file: camel_case_types

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaar_app/modules/Navigation/screen/profile_screen/get_Image_fun.dart';
import 'package:velocity_x/velocity_x.dart';

class Profile_Photo_Screen extends StatefulWidget {
  const Profile_Photo_Screen({super.key});

  @override
  State<Profile_Photo_Screen> createState() => _Profile_Photo_ScreenState();
}

class _Profile_Photo_ScreenState extends State<Profile_Photo_Screen> {
 
 GetImage image = Get.put(GetImage());
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back)),
        title: const Text('Vyneh'),backgroundColor: Colors.black,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const Text('Take your profile photo').text.size(30).bold.make().py24(),
            const Text('Your profile photo helps people recognize you, please note that once you submit your profile photo it cannot be changed'
            ).text.justify.size(20).make().py12(),
            const Text('1.Face the camera directly with your eyes and mounth clearly visible').text.size(15).gray500.make().pOnly(bottom: 10),
            const Text('2.Make sure the photo is well lit, free of glare, and in focus').text.size(15).gray500.make().pOnly(bottom: 10),  
            const Text('3.No photos of a photo, filters, or alterations').text.size(15).gray500.make().pOnly(bottom: 10),
              Center(child: 
             image.imagePath.isEmpty ? Container(
              height: 250,
              width: 200,
              color: Colors.blue,
              
              child: Image.asset('assets/profile.jpg',fit: BoxFit.cover,),
            ).centered().py(30):SizedBox(
              height: 180,
              width: 320,
              // color: Colors.blue,
              child: Image.file(File(image.imagePath.toString()),fit: BoxFit.cover,),
            ).centered().py(30),
              )
          ],),
        )
        ),
        bottomSheet: InkWell(
          onTap: (){
            image.getImage();
          },
          child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black
                ),
                child: const Text('Take Photo').text.white.size(18).make().centered(),
              ).py16().px16(),
        ),
        );
  }
}