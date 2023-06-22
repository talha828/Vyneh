import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:kaar_app/modules/authentication/screens/login.dart';
import 'package:kaar_app/modules/authentication/widgets/customtextfield.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../widgets/btnwidget.dart';
import 'otp_code.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  // form key
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // text field controllers
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _emailController.text = 'kaar@gmail.com';
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFF5F3F3),
        resizeToAvoidBottomInset: false,
        // backgroundColor: Colors.white,
      body: Column(children: [
             Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 100),
          child: Center(child: ClipRRect(
            // borderRadius: BorderRadius.circular(20.0),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              elevation: 10,
              child: Image.asset('assets/logo.jpeg',
              colorBlendMode: BlendMode.dstATop,

              fit: BoxFit.fitHeight,),
            ))),
        ),
         const Padding(
            padding: EdgeInsets.only(top:50.0),
            child:  Text("Forgot Password", style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 32),),
          ),
          Padding(
            padding: const EdgeInsets.only(top:145.0,left: 25,right:25),
            child: CustomTextFieldWidget(
              textController: _emailController, 
              hintText: 'Enter Email', 
              icon: const Icon(Icons.person), 
              validator:  (String? value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                if (!RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+')
                    .hasMatch(value)) {
                  return 'Please enter a valid email';
                }
                return null;
                },
                obscure: false),
          ),
         Padding(
             padding: const EdgeInsets.only(top:40.0,),
             child: BtnWidget(
              title: 'Forgot Password', btnTxtClr: Colors.white, btnBgClr: Colors.black, onTap: (){
                Get.to(()=>const VerificationScreen());
              }),
           ),
          Padding(padding: const EdgeInsets.only(top: 40),
          child: OutlinedButton(onPressed: (){
            Get.to(const LoginScreen());
          }, child: const Text('Login').text.black.bold.make().px24()),
          ),
          //  Padding(padding: const EdgeInsets.only(top: 25),
          // child: OutlinedButton(onPressed: (){
          //   Get.to(const LoginScreen());
          // }, child: const Text('login').text.black.make()),
          // ),

         
      ]),
    ));
  }
}