import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:kaar_app/modules/Navigation/screen/profile_screen/become_driver_screen.dart';
import 'package:kaar_app/modules/authentication/screens/forgot.dart';
import 'package:kaar_app/modules/authentication/widgets/bottomtext.dart';
import 'package:kaar_app/modules/authentication/widgets/customtextfield.dart';
import 'package:kaar_app/user/screens/signup.dart';
import 'package:kaar_app/widgets/btnwidget.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../welcome/widgets/bottom_navigation_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // form key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // text field controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // _emailController.text = 'kaar@gmail.com';
    // _passwordController.text = '123';
    return WillPopScope(
      onWillPop: ()async=>false,
      child: Scaffold( 
        backgroundColor: const Color(0xFFF5F3F3),
      resizeToAvoidBottomInset: false,
        body: Form(
      key: _formKey,
      child: Column(children: [
         const Padding(
            padding: EdgeInsets.only(top:170.0),
            child:  Text("Login", style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 32),),
          ),
          Padding(
            padding: const EdgeInsets.only(top:145.0,left: 25,right:25),
            child: CustomTextFieldWidget(
              textController: _emailController, 
              hintText: 'Username', 
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
             padding: const EdgeInsets.only(top:10.0,left: 25,right: 25),
             child: CustomTextFieldWidget(
               textController: _passwordController,
               hintText: 'Password',
               icon: const Icon(Icons.lock),
               obscure: true,
               validator: (String? value) {
                 if (value!.isEmpty) {
                   return 'Password';
                 }
                 if (value.length < 2) {
                   return 'Password must be at least 8 characters';
                 }
                 return null;
                 },
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top:40.0,),
             child: BtnWidget(
              title: 'Login', btnTxtClr: Color.fromRGBO(255, 255, 255, 1), btnBgClr: Colors.black, onTap: (){
                Get.to(()=> BottomNavigator());
              }),
           ),
           Padding(
             padding: const EdgeInsets.only(top:28.0),
             child: InkWell(onTap: (){
              Get.to(()=>const ForgotScreen());
              
             },
              child: const BottomText(text: 'Forgot Password?', )),
           ),
        
            Padding(
              padding: const EdgeInsets.only(top:15.0),
              child: InkWell(
                  onTap: (){
                    
              Get.to(()=>const SignUpScreen());
                  },
                  child:  const Text("Create Account", style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 18),)),
            ),
            Padding(padding: const EdgeInsets.symmetric(vertical: 20),
            child: OutlinedButton(onPressed: (){
              Get.to(()=>const become_driver_screen());
            }, child: const Text('Become a Driver').text.size(22).make()),
            )
      ]),
        ),
      ),
    );
  }
}