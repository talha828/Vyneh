import 'package:flutter/material.dart';
import 'package:kaar_app/modules/Navigation/screen/home/payment/crdit_debit_payment.dart';
import 'package:kaar_app/modules/Navigation/screen/home/payment/google_payment.dart';
import 'package:kaar_app/modules/Navigation/screen/home/payment/paypal_screen.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';
import 'widget/listtile.dart';

class AddPaymentScreen extends StatelessWidget {
  const AddPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
        leading: IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back)),
        title: const Text('Add Payments')),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Add payment".text.size(26).bold.make().pOnly(bottom: 10,top: 20),
            Tile(
                text: const Text("Credit or Debit Card"),
                color: Colors.white,
                icon: Image.asset('assets/credit.png'),
                tap: (){
                  Get.to(()=>const Credit_Debit_screen());
                },
                ),
            Tile(
                text: const Text("Google Pay"),
                color: Colors.white,
                icon: Image.asset('assets/googlepay.png'),
                 tap: (){
                  Get.to(()=>const Google_Payment_Screen());
                },),
            Tile(
                text: const Text("Paypal"),
                color: Colors.white,
                icon: Image.asset('assets/paypal.png'),
                tap: (){
                  Get.to(()=>PayPal_Screen());
                },),
            Tile(
                text: const Text("Apple Pay"),
                color: Colors.white,
                icon: Image.asset('assets/apple.png'),
               
                ),
          
            Tile(
                text: const Text("Cash"),
                color: Colors.white,
                icon: Image.asset('assets/cash.png')),
          
          ]).pSymmetric(h: 15),
    );
  }
}
