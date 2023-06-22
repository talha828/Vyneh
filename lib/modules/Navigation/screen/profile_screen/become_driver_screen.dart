// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:kaar_app/modules/Navigation/screen/profile_screen/profile_pic_screen.dart';
import 'package:kaar_app/modules/Navigation/screen/profile_screen/terms_condition.dart';
import 'package:velocity_x/velocity_x.dart';
import 'Vehicle_registration_screen.dart';
import 'cnic_back_screen.dart';
import 'cnic_front.dart';
import 'driver_license_Screen.dart';

class become_driver_screen extends StatefulWidget {
  const become_driver_screen({super.key});

  @override
  State<become_driver_screen> createState() => _become_driver_screenState();
}

class _become_driver_screenState extends State<become_driver_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back)),
        title: const Text('Vyneh'),backgroundColor: Colors.black,),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Welcome,H').text.size(40).bold.make().pOnly(left: 20,top: 20,bottom: 10),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Required steps').text.size(22).bold.make().py12(),
                Text("Here's what you need to do to set up your account",style: TextStyle(fontSize: 20,color: Colors.grey[500]),),
                Custom_list('CNIC Back Side',(){Get.to(const CNIC_Back_Screen());}),
                const Divider(),
                 Custom_list('CNIC Front Side',(){Get.to(const CNIC_Front_Screen());}),
                const Divider(),
                 Custom_list('Profile Photo',(){Get.to(const Profile_Photo_Screen());}),
                const Divider(),
                 Custom_list('Driving License Front Side',(){Get.to(const Driver_License_Screen());}),
                const Divider(),
                 Custom_list('Vehicle Registration',(){Get.to(const Vehicle_Registration_Screen());}),
                const Divider(),
                OutlinedButton(onPressed: (){
                  Get.to(const Terms_Conditions_Screen());
                }, child: const Text('Terms and Conditions').text.size(20).black.make()).centered()
              //   Text('Completed').text.size(20).bold.make(),
              //  ListTile(
              //   onTap: (){
              //     Get.to(Terms_Conditions_Screen());
              //   },
              //   leading: Icon(Icons.check_circle,color: Colors.green,),
              //   title: Text('Terms and Conditions').text.size(20).bold.make(),
              //   subtitle: Text('Completed'),
              //   trailing: Icon(Icons.arrow_forward_ios),
              // )

              ],
            ),
            )
          ],
        ),
      ),
    );
  }

  Padding Custom_list(String title, var tap) {
    return ListTile(
      onTap: tap,
                leading: const Icon(Icons.note_add_sharp,size: 30,color:Colors.black,),
                title: Text(title).text.size(20).bold.make(),
                subtitle: const Text('Get Started'),
                trailing: const Icon(Icons.arrow_forward_ios),
              ).py(8);
  }
}