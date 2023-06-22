// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:velocity_x/velocity_x.dart';

import 'home/list_display_screen.dart';

class Search_List_Screen extends StatefulWidget {
  const Search_List_Screen({super.key});

  @override
  State<Search_List_Screen> createState() => _Search_List_ScreenState();
}

class _Search_List_ScreenState extends State<Search_List_Screen> {
  bool check = false;
  int? groupValue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("My Vyneh").text.black.make(),
            backgroundColor: Colors.white,
            leading: IconButton(onPressed: (){}, 
            icon: Icon(Icons.arrow_back)),
            elevation: 0,
            bottom: TabBar(
              padding: const EdgeInsets.symmetric(vertical: 15),
                labelStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                labelColor: Colors.black,
                // indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.black,
                indicatorPadding: const EdgeInsets.all(3),
                unselectedLabelColor: Colors.black45,
                tabs: [
                  Tab(
                    // height: 50,
                    child: 
                        const Text('Ride').text.make(),
                    
                  ),
                  const Tab(
                    // height: 50,
                    child:  Text('Package'),
                  ),
                ]),
          ),
          body:TabBarView(children: [
            //All Screen
            //Started
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: ListView.builder(itemBuilder: (context, index){
                return InkWell(
                  onTap: (){
                    Get.to(const List_Display_screen());
                  },
                  child: Card(child: Column(children: [
                    ListTile(
                       leading: Column(children: [
                            const Text('22:50').text.size(18).green900.bold.make(),
                            const Text('7hl5').text.size(15).green900.bold.make()
                          ]),
                      title: 'Vienna'.text.size(20).bold.green900.make(),
                      subtitle: Row(children:const [
                         Icon(Icons.person_2_outlined),
                         Icon(Icons.person_2_outlined),                    
                         Icon(Icons.person_2_outlined),
                        
                      ],),
                      trailing: const Text('\$36.67').text.green900.bold.size(20).make(),
                    ),
                        ListTile(
                          leading: Column(children: [
                            const Text('04:34').text.size(18).green900.bold.make(),
                            const Text('+1').text.size(14).green900.bold.make()
                          ]),
                      title: 'Budopest'.text.size(20).green900.bold.make(),
                      subtitle: Row(children:const[
                        Icon(Icons.person_2_outlined),
                        Icon(Icons.person_2_outlined),                    
                        Icon(Icons.person_2_outlined),
                        
                      ],),
                    ),
                     ListTile(
                       leading: const CircleAvatar(
                        child: Icon(Icons.person),
                       ),
                      title: 'Regiolet'.text.size(20).bold.green900.make(),
                      subtitle:const Text('1 change').text.size(14).bold.green900.make(),
                      trailing: const Icon(Icons.more_horiz),
                    ),
                  ]),),
                );
              }),
            ),
          //End All Screen

            //Car Screen
            //Screen
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                'Today'.text.size(25).bold.make().pOnly(top: 50,bottom: 100),
                const Text('No Car rides for this \nday').text.center.size(40).make().centered(),
                Container(
                  width: 250,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 0.3),
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  ),
                  child: 'Create a ride alert'.text.size(20).color(Colors.blue).bold.make().centered(),
                ).centered().py(50)
            ],),
            ),

          
          ])
          )
          ),
    );
  }
  }