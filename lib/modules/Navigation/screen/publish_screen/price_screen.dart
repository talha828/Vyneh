// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:kaar_app/modules/Navigation/screen/publish_screen/return_ride_screen.dart';
import 'package:velocity_x/velocity_x.dart';


class Price_Passengers_Screen extends StatefulWidget {
  const Price_Passengers_Screen({super.key});

  @override
  State<Price_Passengers_Screen> createState() => _Price_Passengers_ScreenState();
}

class _Price_Passengers_ScreenState extends State<Price_Passengers_Screen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              'Set your price per seat'
                  .text
                  .size(40)
                  .gray900.bold
                  .make().py24(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    IconButton(onPressed: (){
                      setState(() {
                        if(count == 0){
                        count;
                        }else if(count >= 0){
                          count--;
                        }
                      });
                    },icon:Image.asset('assets/minimize.png',color: Colors.blue,),iconSize: 55,),
                    '\$$count'.text.size(70).gray900.bold.make(),
                    IconButton(onPressed: (){
                        setState(() {
                        count++;
                      });
                    }, color: Colors.blue,icon: const Icon(Icons.add_circle_outline,size: 60,)).px(20)
                  ],),
                  Container(
                    // height: ,
                    decoration: BoxDecoration(
                      
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)
                    ),
                    child: "Recommended price: \$20 - \$40".text.size(18).white.make().p(10),
                  ).py12().pOnly(top: 20),
                  "Perfect price for this ride! you'll get passengers in no time".text.size(19).make().py8()
            ])),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Return_Ride_screen()));
        },
        child: const Icon(Icons.arrow_forward),
      ).px12(),
    );
  }
}
