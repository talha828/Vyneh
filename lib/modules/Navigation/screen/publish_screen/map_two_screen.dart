// ignore_for_file: camel_case_types

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:velocity_x/velocity_x.dart';
import 'drop_off_screen.dart';

class Map_two_Screen extends StatefulWidget {
  const Map_two_Screen({Key? key}) : super(key: key);

  @override
  State<Map_two_Screen> createState() => _Map_two_ScreenState();
}

class _Map_two_ScreenState extends State<Map_two_Screen> {
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
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Column(
          children: [
            Expanded(
              child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
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
                  ),
              ),),
            Expanded(
              flex: 8,
              child: GoogleMap(
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

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DropOffScreen()));
        }, child: const Icon(Icons.arrow_forward),
      ).px(40),
    );
  }
}
