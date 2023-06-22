import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:kaar_app/modules/welcome/screens/splashscreen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
   @override
  void initState() {
    //implement initState
    super.initState();
    startTime();
  }
   startTime() async {
    return Future.delayed(const Duration(seconds: 2),(){
      return Get.to(()=>const SplashScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Center(child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset('assets/logo.jpeg',
          // height: 225,
          // width: 430,
          colorBlendMode: BlendMode.dstATop,
          fit: BoxFit.contain,))),
      ),
    );
  }
}

    