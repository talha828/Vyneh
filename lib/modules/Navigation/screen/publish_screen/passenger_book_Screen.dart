// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:kaar_app/modules/Navigation/screen/publish_screen/price_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class Passengers_book_screen extends StatefulWidget {
  const Passengers_book_screen({super.key});

  @override
  State<Passengers_book_screen> createState() => _Passengers_book_screenState();
}

class _Passengers_book_screenState extends State<Passengers_book_screen> {
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
                
            'Can passengers book instantly?'.text.size(35).semiBold.gray800.make().py32(),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Price_Passengers_Screen()));
                },
                title: 'Yes sure!'.text.size(25).color(Theme.of(context).colorScheme.secondary).make(),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 2).py12(),
                ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Price_Passengers_Screen()));
                },
                title: "No, I'll reply to each request myself ".text.size(20).gray600.make(),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),

              ],),
            ),
          ),
          );
  }
}