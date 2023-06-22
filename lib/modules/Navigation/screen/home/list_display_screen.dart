// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:velocity_x/velocity_x.dart';

class List_Display_screen extends StatefulWidget {
  const List_Display_screen({super.key});

  @override
  State<List_Display_screen> createState() => _List_Display_screenState();
}

class _List_Display_screenState extends State<List_Display_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        elevation: 0,
        leading: IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back,size: 35,color: Colors.blue,)),
      ),
      body: SingleChildScrollView(child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Fri 17 March').text.size(30).bold.make().px(20).py(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                 ListTile(
                     leading: Column(children: [
                          const Text('22:50').text.size(18).green900.bold.make(),
                          const Text('1h30').text.size(15).green900.bold.make()
                        ]),
                    title: 'Vienna Main train station '.text.size(20).bold.green900.make(),
                    subtitle: Row(children:[
                       const Icon(Icons.person_2_outlined, color: Colors.green,).py(20),
                       const Text('2.5 km from your departure').text.color(Colors.green).size(14).make()
                      
                    ],),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                      ListTile(
                        leading: Column(children: [
                          const Text('04:34').text.size(18).green900.bold.make(),
                          const Text('+1').text.size(14).green900.bold.make()
                        ]),
                    title: 'Bratislava Mlynske Nivy Bus'.text.size(20).green900.bold.make().pOnly(bottom: 20),
                    subtitle: Row(children:[
                      const Icon(Icons.person_2_outlined,color: Colors.green,),
                      'change of vehicle'.text.size(14).color(Colors.green).make()
                    ],),
                    
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                    ListTile(
                     leading: Column(children: [
                          const Text('02:15').text.size(18).green900.bold.make(),
                          const Text('2h30').text.size(15).green900.bold.make()
                        ]),
                    title: 'Vienna Main train station '.text.size(20).bold.green900.make().pOnly(bottom: 20,top: 10),
                    subtitle:const Text('Bratislava').text.color(Colors.green).size(14).make(),
                      
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                      ListTile(
                        leading: Column(children: [
                          const Text('04:34').text.size(18).green900.bold.make(),
                          const Text('+1').text.size(14).green900.bold.make()
                        ]),
                    title: 'Bratislava Mlynske Nivy Bus'.text.size(20).green900.bold.make(),
                    subtitle: Row(children:[ 
                      const Icon(Icons.person_2_outlined, color: Colors.green,),
                       const Text('2.5 km from your departure').text.color(Colors.green).size(14).make()
                    ],),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                   
              ],
            ),
          ),
        const Divider(thickness: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const Text('Total Price for 2 \npassengers').text.size(20).green900.make().pOnly(bottom: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              const Text('Standard').text.size(20).green900.make(),
              const Text('\$38.08').text.size(30).green900.make()
            ],)
          ],),
        ),
        // ignore: prefer_const_constructors
        Divider(thickness: 10,),
        ListTile(
          leading: const Icon(Icons.logout,color: Colors.blue,size: 25,),
          title: 'Share ride'.text.color(Colors.blue).size(20).bold.make(),
        ).py16(),
       Container(
        height: 60,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(40))
        ),
        child: 'Continue'.text.white.size(20).make().centered(),
       ).px20()
        ],
      )),
    );
  }
}