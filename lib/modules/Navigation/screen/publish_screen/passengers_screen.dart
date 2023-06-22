// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'passenger_book_Screen.dart';

class Passengers_Screen extends StatefulWidget {
  const Passengers_Screen({super.key});

  @override
  State<Passengers_Screen> createState() => _Passengers_ScreenState();
}

class _Passengers_ScreenState extends State<Passengers_Screen> {
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
            child: Column(children: [
              'So how many\nVyneh Passengers  can you take'
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
                    },icon: Image.asset('assets/minimize.png',color: Colors.blue,),iconSize: 55,),
                    '$count'.text.size(70).gray900.bold.make(),
                    IconButton(onPressed: (){
                        setState(() {
                        count++;
                      });
                    }, color: Colors.blue,icon: const Icon(Icons.add_circle_outline,size: 60,)).px(20)
                  ],).py24()
            ])),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Passengers_book_screen()));
        },
        child: const Icon(Icons.arrow_forward),
      ).px12(),
    );
  }
}
