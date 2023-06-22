// ignore_for_file: file_names, camel_case_types

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaar_app/modules/Navigation/screen/profile_screen/get_Image_fun.dart';
import 'package:velocity_x/velocity_x.dart';

class Driver_License_Screen extends StatefulWidget {
  const Driver_License_Screen({super.key});

  @override
  State<Driver_License_Screen> createState() => _Driver_License_ScreenState();
}

class _Driver_License_ScreenState extends State<Driver_License_Screen> {
 
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
            const Text('Take a Photo of your Driving License Front Side').text.size(30).bold.make().py24(),
            const Text('Take a picture of the front side of your Driving Licence'
                '(include all xorner). 1 Make sure that picture is clear'
                'and all word are easily readable. 2 All of the '
                'information like your name,driving licence number,'
                'documents issue date, expiration date, license type, and'
                'CNIC(where available) should be clearly visible. 3 Ensure'
                'to upload the right type/ category of license for the'
                'product you want to drive on. for example. D/L category'
                'product you want to drive on.for car product(vyneh flow).'
                'M/Cycle for motorcycle products(SUV/Flow).etc 4'
                'Renewal Receipt should be accepeted till the validity date'
                'mentioned on the receipt, 5.if any of the information is'
                'blurry or too shiny(from camera flash). card will be'
                'rejected, 6.Make sure that you have uploaded your'
                'CNIC in the relevant documents slot, as it will be cross'
                'refernced to approve your driving license.'
            ).text.justify.size(20).make(),
          
             image.imagePath.isEmpty ? Container(
              height: 180,
              width: 320,
              color: Colors.blue,
              
              child: Image.asset('assets/drivers-license.png',fit: BoxFit.cover,),
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