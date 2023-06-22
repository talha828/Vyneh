// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:kaar_app/modules/Navigation/screen/publish_screen/passengers_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class Yes_Sure_screen extends StatefulWidget {
  const Yes_Sure_screen({super.key});

  @override
  State<Yes_Sure_screen> createState() => _Yes_Sure_screenState();
}

class _Yes_Sure_screenState extends State<Yes_Sure_screen> {
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
                
            'Think comfort, keep the middle seat empty!'.text.size(35).semiBold.gray800.make().py32(),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Passengers_Screen()));
                },
                title: 'Yes sure!'.text.size(25).color(Theme.of(context).colorScheme.secondary).make(),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 2).py12(),
                ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Passengers_Screen()));
                },
                title: "No, I'll squeeze in 3 ".text.size(22).gray600.make(),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),

              ],),
            ),
          ),
          );
  }
}