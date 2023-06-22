// ignore_for_file: camel_case_types

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

import 'add_stopovers_screen.dart';

class Four_route_screen extends StatefulWidget {
  const Four_route_screen({super.key});

  @override
  State<Four_route_screen> createState() => _Four_route_screenState();
}

class _Four_route_screenState extends State<Four_route_screen> {
  final position =
      const CameraPosition(target: LatLng(25.3853696, 68.3638784), zoom: 14);

  final Completer _controller = Completer();

  final List<Marker> _marker = [];
  final List<Marker> _list = [
    const Marker(
        markerId: MarkerId("1"),
        position: LatLng(25.3853696, 68.3638784),
        infoWindow: InfoWindow(title: "My Position"))
  ];

  @override
  void initState() {
    super.initState();
    _marker.addAll(_list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: position,
              markers: Set<Marker>.of(_marker),
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
            DraggableScrollableSheet(
            initialChildSize: 0.30,
            minChildSize: 0.15,
            maxChildSize: 0.50,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                color: Colors.white,
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListView(
                    controller: scrollController,
                    children: [
                       const Divider(thickness: 5).px(170).py12(),
                      'What is your route?'.text.size(35).bold.gray800.make().px12().py24(),
                    ListTile(
                      title: const Text("37 min - No tolls").text.size(20).bold.gray800.make(),
                      subtitle: const Text('17 km - Shahrah-e-Pakistan').text.size(16).make().py8(),
                      trailing: const Icon(Icons.radio_button_checked,color: Colors.blue,),
                    ).py16(),
                     ListTile(
                      title: const Text("41 min - No tolls").text.size(20).bold.gray800.make(),
                      subtitle: const Text('15 km - Shahrah-e-Pakistan and Shahrah-e-jahangir Rd').text.size(16).make().py8(),
                      trailing: const Icon(Icons.radio_button_off,color: Colors.blue,),
                    ).py16(),
                     ListTile(
                      title: const Text("41 min - No tolls").text.size(20).bold.gray800.make(),
                      subtitle: const Text('14 km - Nawab Siddique Ali khan Rd').text.size(16).make().py8(),
                      trailing: const Icon(Icons.radio_button_off,color: Colors.blue,),
                    ).py16()
                  ],),
                ),
              );
            },
          ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                onPressed: () {
                  Get.to(()=>const Add_Stopovers_Screen());
                }, child: const Icon(Icons.arrow_forward))
          ],
        ),
      ),
    );
  }
}
