import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:kaar_app/modules/authentication/screens/change_password.dart';
import 'package:kaar_app/modules/authentication/screens/login.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:velocity_x/velocity_x.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: "Verification".text.color(Colors.black).make(),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black54,
        ).onTap(() {Get.back();}),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 1 / 2.7,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(blurRadius: 0.3)]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Enter the verification code sent via"
                    .text
                    .bold
                    .size(16)
                    .make()
                    .pOnly(bottom: 30, left: 20, right: 20, top: 10),
                // "(+44) 123 456 789"
                //     .text
                //     .size(16)
                //     .color(Colors.blue)
                //     .make()
                //     .pOnly(bottom: 50, left: 20),
                OTPTextField(
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 60,
                  style: TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.box,
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                  onChanged: ((pin) => "Change" + pin),
                ).pOnly(bottom: 20),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50)),
                  child: "Continue"
                      .text
                      .color(Colors.white)
                      .make()
                      .centered()
                    ,
                ).pSymmetric(h: 20, v: 20).onTap(() {                  
                    Get.to(Change_Password_Screen());
                  //  otpController.clear();
                    // setState(() {});
                    }),
                "Request a new verification code"
                    .text
                    .color(Colors.grey)
                    .make()
                    .centered()
              ],
            ).pSymmetric(h: 10),
          ),
          "Resend Verification Code ?"
              .text
              .color(Colors.orange)
              .size(16)
              .make()
              .centered()
              .pOnly(bottom: 50),
        ],
      ),
    );
  }
}
