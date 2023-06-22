// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:kaar_app/modules/Navigation/widgets/usertitles.dart';

class UserProfile extends StatefulWidget {
  final String text;
  final String name;
  final String Address;
  final img;
  const UserProfile({super.key, required this.text, required this.name, required this.Address, this.img,});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff333333),
    appBar: AppBar(
      title: const Text("Profile", style: TextStyle(fontSize: 24, fontFamily: 'Poppins'),),
      centerTitle: true,
      backgroundColor: const Color(0xff333333),),
       body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
              height: 310,
              width: MediaQuery.of(context).size.width,
              // color: Color(0xff979797),
               decoration:   BoxDecoration(
               image: DecorationImage(
                  image:  AssetImage('${widget.img}',),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop),
            ),
        ),
              child: Padding(
                padding: const EdgeInsets.only(bottom:15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Text(widget.name,style: const TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',fontSize: 24),),
                  const SizedBox(height: 12,),
                  Text(widget.Address,style: const TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',fontSize: 20),)
                ]),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const [
                 UserTitles(title: ' About',),
                 UserDescription(
                    text: 'Eva is traveller lover. She loves to visit new places'
                       'during whole year. She is always renting cars on'
                       ' this app. One of the top rated car hirer on our'
                       'app. Very professional and courtious as well.',
                   icon: Icon(Icons.edit , color: Color(0xffDDDDDD),),),

                SizedBox(height: 10,),
                UserTitles(title: "Email",),
                UserDescription(text: 'admin123@gmail.com', icon: Icon(Icons.edit, color: Colors.white,)),

                SizedBox(height: 10,),
                UserTitles(title: "Contact",),
                UserDescription(text: '208-834-024-2', icon: Icon(Icons.edit, color: Colors.white,)),

                SizedBox(height: 10,),
                UserTitles(title: "Street",),
                UserDescription(text: "884 Laurence Island", icon: Icon(Icons.edit, color: Colors.white,)),

                SizedBox(height: 10,),
                UserTitles(title: "City",),
                UserDescription(text: 'New York', icon: Icon(Icons.edit, color: Colors.white,)),

                SizedBox(height: 10,),
                UserTitles(title: "Zip Code",),
                UserDescription(text: '434-5676', icon: Icon(Icons.edit, color: Colors.white,)),

                SizedBox(height: 10,),
                UserTitles(title: "Country",),
                UserDescription(text: 'United State', icon: Icon(Icons.edit, color: Colors.white,)),

                SizedBox(height: 20,),

              ],
            )
          ],
        ),
      ),
    ),
  );
  }
}
