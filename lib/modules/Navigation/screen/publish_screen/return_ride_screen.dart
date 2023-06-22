// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:kaar_app/modules/Navigation/screen/publish_screen/phone_verify_screen.dart';
import 'package:velocity_x/velocity_x.dart';
import 'route_four.dart';

class Return_Ride_screen extends StatefulWidget {
  const Return_Ride_screen({super.key});

  @override
  State<Return_Ride_screen> createState() => _Return_Ride_screenState();
}

class _Return_Ride_screenState extends State<Return_Ride_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.white,
      appBar:AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.blue,
            )),
      ),
          body:SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                Image.asset('assets/Social.png',width: double.infinity,height: 250,).py32(),
                
            'Coming back as well?\nPublish your return ride now!'.text.size(35).semiBold.gray800.make().py32(),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Four_route_screen()));
                },
                title: 'Yes sure!'.text.size(25).color(Theme.of(context).colorScheme.secondary).make(),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 2).py12(),
                ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Phone_Verify_Screen()));
                },
                title: "No, thanks ".text.size(22).gray600.make(),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),

              ],),
            ),
          ),
          );
  }
}