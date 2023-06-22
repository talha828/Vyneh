import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kaar_app/modules/Navigation/screen/publish_screen/route_four.dart';
import 'package:velocity_x/velocity_x.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back, color: Colors.blue,),
        elevation: 0,
      ),
      body:  SafeArea(
        child: Column(
          children: [
            Flexible(
              flex: 3,
              child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      "Where would you like to pickup passengers ?".text.size(24).bold.make().pOnly(bottom: 20, top: 20),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: const BorderRadius.all(Radius.circular(40))
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black)
                              ),
                              child: const Icon(Icons.question_mark_outlined).px8()),
                            const Text('Why is an exact location better?',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                          ],
                        ),
                      ).pOnly(bottom: 20, right: 60),
                
                      TextField(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Four_route_screen()));
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFE4E9E4),
                            hintText: "e.g Manchester Picadilly",
                            hintStyle: const TextStyle(fontSize: 20),
                            prefixIcon: const Icon(Icons.search, size: 26,),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),),
            Flexible(
              flex: 7,
              child: GoogleMap(
                initialCameraPosition: position,
                markers: Set<Marker>.of(_marker),
                onMapCreated: (GoogleMapController controller){
                  _controller.complete(controller);
                },

              ),
            ),
          ],
        ),
      ),

    );
  }
}
