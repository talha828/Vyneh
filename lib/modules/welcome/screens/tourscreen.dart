// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaar_app/modules/authentication/screens/login.dart';
import 'package:kaar_app/user/screens/signup.dart';
import 'package:kaar_app/widgets/btnwidget.dart';
import '../widgets/security_dialogbox.dart';

class TourScreen extends StatefulWidget {
  const TourScreen({super.key});

  @override
  State<TourScreen> createState() => _TourScreenState();
}

class _TourScreenState extends State<TourScreen> {

  @override
  void initState(){
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Alertbox().showMyDialog(context);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async=>false,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 150),
          child: Center(child: ClipRRect(
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              elevation: 10,
              child: Image.asset('assets/logo.jpeg',
              colorBlendMode: BlendMode.dstATop,

              fit: BoxFit.fitHeight,),
            ))),
        ),
          Container(
            child: Column(children: [
               Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: BtnWidget(
              title: 'Login', btnTxtClr: Colors.white,
               btnBgClr: Colors.black, onTap: (){
                Get.to(()=>const LoginScreen());
               }),
          ),
           Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: BtnWidget(
              title: 'Register', btnTxtClr: Colors.white,
               btnBgClr: Colors.black, onTap: (){
                Get.to(()=>const SignUpScreen());
               }),
          ),
            ]),
          )
         
          
        ]),
      ),
    );
  }

}
