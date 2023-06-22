// ignore_for_file: unused_field, prefer_is_empty, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:kaar_app/modules/authentication/screens/login.dart';
import 'package:kaar_app/modules/authentication/screens/otp_code.dart';
import 'package:kaar_app/modules/authentication/widgets/bottomtext.dart';
import 'package:kaar_app/modules/authentication/widgets/customtextfield.dart';
import 'package:kaar_app/widgets/btnwidget.dart';
import '../../../widgets/title_widget.dart';
import '../../modules/authentication/screens/otp_register.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // form key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
   final TextEditingController _mobileController = TextEditingController();
  late final TextEditingController _birthdateController= TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  DateTime _dateTime = DateTime.now();
 
  //Date Picker Function
  void _showDatePicker(){
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2050)
    ).then((value){
      setState(() {
        _dateTime = value!;
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async=>false,
      child: Scaffold(
       resizeToAvoidBottomInset: false,
      //  backgroundColor: Color(0xff999999),
      body: SingleChildScrollView(
        child: Column(children: [
           const Padding(
              padding: EdgeInsets.only(top:40.0),
              child:  TitleWidget(title: 'Register'),
            ),
             Padding(
              padding: const EdgeInsets.only(top:50.0,left: 25,right:25),
              child: CustomTextFieldWidget(
                textController: _firstnameController, 
                hintText: 'First Name', 
                icon: const Icon(Icons.person), 
                validator:  (String? value) {
                  if (value!.isEmpty) {
                    return 'Please enter your first name';
                  }
                  return null;
                  },
                  obscure: false),
            ),
              Padding(
              padding: const EdgeInsets.only(top:10.0,left: 25,right:25),
              child: CustomTextFieldWidget(
                textController: _lastnameController, 
                hintText: 'Last Name', 
                icon: const Icon(Icons.person), 
                validator:  (String? value) {
                  if (value!.isEmpty) {
                    return 'Please enter your Last name';
                  }
                  return null;
                  },
                  obscure: false),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0,left: 25,right:25),
              child: CustomTextFieldWidget(
                textController: _emailController, 
                hintText: 'Email Address', 
                icon: const Icon(Icons.email), 
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
               padding: const EdgeInsets.only(top:10.0,left: 25,right: 25),
               child: CustomTextFieldWidget(
                 textController: _mobileController,
                 hintText: 'Mobile Number',
                 icon: const Icon(Icons.lock),
                 obscure: true,
                 validator: (String? value) {
                   if (value!.isEmpty) {
                     return 'Mobile Number';
                   }
                   if (value.length < 0 && value.length<12) {
                     return 'Mobile Number must be 11 digit ';
                   }
                   return null;
                   },
               ),
             ),
              Padding(
              padding: const EdgeInsets.only(top:10.0,left: 25,right:25),
              child: CustomTextFieldWidget(
                textController: _birthdateController, 
                hintText: '${_dateTime.day}-${_dateTime.month}-${_dateTime.year}',
                icon:IconButton(onPressed: (){
                                           _showDatePicker();
                  setState(() {
                    _birthdateController.text.toString() == _dateTime.day-_dateTime.month-_dateTime.year;
                  });
                }, icon:const Icon(Icons.calendar_month_rounded)), 
                validator:  (String? value) {
                  if (value!.isEmpty) {
                    return 'Please enter your birth date';
                  }
                             
                  return null;
                  },
                  obscure: false),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0,left: 25,right:25),
              child: CustomTextFieldWidget(
                textController: _passwordController, 
                hintText: 'Password', 
                icon: const Icon(Icons.person), 
                validator:  (String? value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                  },
                  obscure: false),
            ),
             Padding(
               padding: const EdgeInsets.only(top:30.0,),
               child: BtnWidget(
                title: 'Register', btnTxtClr: Colors.white, btnBgClr: Colors.black, onTap: (){
                  Get.to(OTP_Register_Screen());
                }),
             ),
             Padding(
               padding: const EdgeInsets.only(top:25.0),
               child: InkWell(onTap: (){
                Get.to(const LoginScreen());
               },
                child: const BottomText(text: 'Register Already?Login',)),
             ),
             
        ]),
      ),
    ));
  }
}
