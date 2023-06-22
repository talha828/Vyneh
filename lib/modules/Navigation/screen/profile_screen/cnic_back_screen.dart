// ignore_for_file: camel_case_types

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaar_app/modules/Navigation/screen/profile_screen/get_Image_fun.dart';
import 'package:velocity_x/velocity_x.dart';

class CNIC_Back_Screen extends StatefulWidget {
  const CNIC_Back_Screen({super.key});

  @override
  State<CNIC_Back_Screen> createState() => _CNIC_Back_ScreenState();
}

class _CNIC_Back_ScreenState extends State<CNIC_Back_Screen> {
 
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
            const Text('Take a Photo of your CNIC Back Side').text.size(30).bold.make().py24(),
            const Text('Take a picture of the back side of your national ID card'
                '(include all corner). 1 Make sure that picture is clear'
                'and all word are easily readable. 2 All of the '
                'information like your name,date of brith, gender, the'
                'expiration date etc. should be clearly visible. 3 if any of'
                'the information is blurry od too shiny(from camera'
                'flash), card will be rejected. 4 Missing information or'
                'tempering with information or the photo will also lead to rejection'
            ).text.justify.size(20).make(),
            Row(children: [
               Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle
              ),
              child: const Text('!').text.white.make().centered(),
            ),
            const Text('What is this?').text.color(Colors.blue).size(18).make().px12()
            ],).py24(),
             image.imagePath.isEmpty ? Container(
              height: 180,
              width: 320,
              color: Colors.blue,
              child: Image.asset('assets/cnic_back.jpg',fit: BoxFit.cover,),
            ).centered().py(30):SizedBox(
              height: 180,
              width: 320,
              // color: Colors.blue,
              child: Image.file(File(image.imagePath.toString()),fit: BoxFit.cover,),
            ).centered().py(30),
          
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