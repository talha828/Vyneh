import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:kaar_app/modules/Navigation/screen/publish_screen/map_two_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class PickUpScreen extends StatelessWidget {
  const PickUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async=>false,  
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          // leading: IconButton(onPressed: (){
          // Get.back();
          // }, icon: const Icon(Icons.close, color: Colors.blue, size: 30,),),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Pick-Up".text.size(30).bold.make(),
              const SizedBox(height: 20,),
              TextField(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  const Map_two_Screen()));
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFE4E9E4),
                  hintText: "Search",
                  prefixIcon: const Icon(Icons.search, size: 26,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
