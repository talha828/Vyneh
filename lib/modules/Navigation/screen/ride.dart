// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class your_rides_Screen extends StatefulWidget {
  const your_rides_Screen({super.key});

  @override
  State<your_rides_Screen> createState() => _your_rides_ScreenState();
}

class _your_rides_ScreenState extends State<your_rides_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.white,
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
          child: Column(children: [
            SizedBox(
              width: double.infinity,
            child: Image.asset('assets/index.png',width: double.infinity,height: 300,),
            ),
            'Your future travel plans will appear here.'.text.size(35).bold.gray800.make().py20(),
            'Find the perfect ride from thousands of destinaions, or publish to share your travel costs'.text.size(19).gray400.make().py24()
          ],),
        ),
      )
    );
  }
}