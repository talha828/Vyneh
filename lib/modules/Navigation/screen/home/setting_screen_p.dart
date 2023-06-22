
// ignore: camel_case_types
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:kaar_app/modules/Navigation/screen/notification.dart';
import 'package:velocity_x/velocity_x.dart';

class setting_Page_Screen extends StatefulWidget {
  const setting_Page_Screen({super.key});

  @override
  State<setting_Page_Screen> createState() => _setting_Page_ScreenState();
}

class _setting_Page_ScreenState extends State<setting_Page_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        // backgroundColor: Colors.transparent,
        elevation: 0,
      // leading: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
            Setting_list('Account Security', Icons.settings_outlined, (){}),
            
            Setting_list('Language', Icons.language_outlined, (){}),
            Setting_list('Notification', Icons.notifications_outlined, (){
              Get.to(Notification_Screen());
            }),
            
            // Setting_list('Invite Friends', Icons.person_pin_outlined, (){}),
            Setting_list('Priacy Policy', Icons.privacy_tip_outlined, (){}),
            
            // Setting_list('Data Attribution', Icons.maps_ugc_outlined, (){}),
            // Setting_list('Give Rating', Icons.star_border_outlined, (){}),
      ],)).px(15),
      );
  
  }

    Padding Setting_list(String title, var leading, var tap) {
    return Card(
      child: ListTile(
        onTap: tap,
        leading: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle, border: Border.all(color: Vx.gray300)),
          child: Icon(
            leading,
            color: Vx.gray400,
          ).p(10),
        ),
        title: Text(title).text.bold.make(),
        // subtitle: Text(subtitle).text.make(),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    ).pOnly(bottom: 20);
  }
  }