// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'calendar_screen.dart';

class Add_Stopovers_Screen extends StatefulWidget {
  const Add_Stopovers_Screen({super.key});

  @override
  State<Add_Stopovers_Screen> createState() => _Add_Stopovers_ScreenState();
}

class _Add_Stopovers_ScreenState extends State<Add_Stopovers_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white10,elevation: 0,leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: const Icon(Icons.arrow_back,color: Colors.blue,size: 30,)),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            'Add stopovers to get more passengers'.text.size(30).semiBold.gray900.make().py(40),
            TextButton(onPressed: (){}, child:'add city'.text.size(18).make())
          ],),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Calendar_Screen()));
      },child: const Icon(Icons.arrow_forward),).p(15),
    );
  }
}