// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:kaar_app/modules/car%20listing/widgets/listingtitle.dart';

import '../../../widgets/btnwidget.dart';

class SuccessfullListing extends StatelessWidget {
  const SuccessfullListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // ignore: prefer_const_constructors
       backgroundColor: Color(0xfff333333),
       body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.only(top:70.0,),
              child: Center(
                child: ClipOval(
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.black,
                    child: const Icon(Icons.thumb_up,color: Colors.blue,size: 40,),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60,),
           const ListingTitle(title: 'Car Listed Successfully',),
            const SizedBox(height: 50,),
            const Padding(
              padding: EdgeInsets.only(left:18.0),
              child: ListingDescription(desc: 'Congratulations your car is listed successfully'
                  '. When it will be live you will get details of your listing on your email and mobile number shortly.',
              ),
            ),
           const Padding(
              padding: EdgeInsets.only(top:130.0),
              child: ListingDescription(desc: 'Car Listing ID: 43456-344',),
            ),
            const Padding(
              padding:  EdgeInsets.only(top:15.0),
              child: ListingDescription(desc: 'Car Listing Date: 11 OCT 2019',),
            ),
            Padding(
              padding: const EdgeInsets.only(top:50.0),
              child: BtnWidget(title: 'View Listing Details',
               btnTxtClr: Colors.white, btnBgClr: Colors.blue, onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessfullListing()));
               }),
            )
          ]),
       ),
    );
  }
}