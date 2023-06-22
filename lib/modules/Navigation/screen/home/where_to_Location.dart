// ignore_for_file: file_names, camel_case_types

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:textfield_search/textfield_search.dart';
import 'package:velocity_x/velocity_x.dart';

import '../home_screen.dart';
import 'cities_list.dart';

class where_to_Location_Screen extends StatefulWidget {
  const where_to_Location_Screen({Key? key}) : super(key: key);

  @override
  State<where_to_Location_Screen> createState() => _where_to_Location_ScreenState();
}

class _where_to_Location_ScreenState extends State<where_to_Location_Screen> {
  final position = const CameraPosition(target: LatLng(25.3853696, 68.3638784), zoom: 14);

  final Completer _controller = Completer();

  final List<Marker> _marker = [];
  final List<Marker> _list = [
  const Marker(
    markerId: MarkerId("1"),
    position:  LatLng(25.3853696, 68.3638784),
    infoWindow: InfoWindow(
    title: "My Position"
    )
  )
  ];


  @override
  void initState(){
    super.initState();
    _marker.addAll(_list);
  }

  final CitiesList _citiesList = CitiesList();
  

  TextEditingController pickcontroller = TextEditingController();
  
  TextEditingController dropcontroller = TextEditingController();
  @override
  void dispose() {
    //implement dispose
    super.dispose();
    pickcontroller.dispose();
    dropcontroller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      // appBar: AppBar(title: 'Switch ride'.text.black.make(),centerTitle: true,
      // backgroundColor: Colors.white12,
      // elevation: 0,
      // automaticallyImplyLeading: true,
      // leading: Icon(Icons.arrow_back,color: Colors.black,),
      // ),
      body:  SafeArea(
        child: Column(
          children: [
             Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child:Row(
                  children: [
                    Flexible(
                      child: Column(
                            children: [
                                 SizedBox(
                                  height: 50,
                                   child: TextFieldSearch(
                                                               initialList: _citiesList.Cities,
                                                               label: 'Enter City Name',
                                                               controller: pickcontroller,
                                                               decoration:const InputDecoration(
                                    filled: true,
                                        fillColor: Color(0xFFE4E9E4),
                                        hintText: "Enter pickup location",
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none
                                        ),
                                   )).pOnly(bottom: 10,right: 5),
                                 ),
                                    
                                 SizedBox(
                                  height: 40,
                                   child: TextFieldSearch(
                                                               initialList: _citiesList.Cities,
                                                               label: 'Enter City Name',
                                                               controller: dropcontroller,
                                    decoration: const InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xFFE4E9E4),
                                        hintText: "Where to?",
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none
                                        )
                                    ),
                                                                 ).pOnly(right: 5),
                                 ),
                            ],
                          ),
                    ),
                    InkWell(
                      onTap: (){
                        // ignore: prefer_const_constructors
                        Get.back();
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black
                        ),
                        child: '+'.text.size(25).white.make().centered(),
                      ),
                    )                  
                  ],
                ),
              ),
              // ),
            Expanded(
              flex: 5,
              child:
               GoogleMap(
                initialCameraPosition: position,
                myLocationEnabled: true,
                mapType: MapType.normal,
                markers: Set<Marker>.of(_marker),
                onMapCreated: (GoogleMapController controller){
                  _controller.complete(controller);
                },

              ),
            ),
          ],
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>DropOffScreen()));
      //   }, child: const Icon(Icons.arrow_forward),
      // ).px(40),
    );
  }
}
