// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaar_app/modules/Navigation/screen/home/payment/third_Screen.dart';
import 'package:velocity_x/velocity_x.dart';
import 'add_payment_screen.dart';
import 'widget/listtile.dart';

class Wallet_Screen extends StatelessWidget {
  const Wallet_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar:  AppBar(
        leading: IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back)),
        title: const Text('wallet'),backgroundColor: Colors.black,),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            "Wallet".text.size(28).bold.make().pOnly(bottom: 20,top: 20),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1 / 4.8,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [const BoxShadow(blurRadius: 1)]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  "Vyneh Cash".text.bold.make().pOnly(bottom: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "PKR  4.00".text.bold.size(28).make(),
                      const Icon(Icons.arrow_forward_ios)
                    ],
                  ).pOnly(bottom: 10),
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                            color: Colors.black, shape: BoxShape.circle),
                        child:
                            "!".text.bold.color(Colors.white).make().centered(),
                      ).pOnly(right: 10),
                      "Auto-refill is off"
                          .text
                          .bold
                          .color(Colors.black54)
                          .size(16)
                          .make(),
                    ],
                  ).pOnly(bottom: 20),
                  Container(
                    width: 130,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.black),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        "Add Fund".text.color(Colors.white).make()
                      ],
                    ),
                  )
                ],
              ).p(15),
            ).onTap(() {
              Get.to(const Wallet_ThirdScreen());
            }).pOnly(bottom: 20),
            "Payment method".text.size(18).bold.make().pOnly(),
            Tile(
                    text: const Text("Cash"),
                    color: Colors.grey[100],
                    icon: Image.asset('assets/cash.png'))
                .pOnly(bottom: 10),
            ActionChip(
              backgroundColor: Colors.grey[300],
              label: const Text("Add Payment Method"),
              onPressed: () {
                Get.to(const AddPaymentScreen());
              },
            ).pOnly(bottom: 10),
            const Tile(
              text: Text(
                "Personal",
              ),
              color: Colors.black,
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            const Tile(
              text: Text("BattleOnFire"),
              icon: Icon(Icons.shopping_bag),
            ),
            const Tile(
              text: Text(
                "Add another business profile",
                style: TextStyle(color: Colors.blue),
              ),
              color: Colors.grey,
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
              subtitle: Text("Sort your idea for easier expansing"),
            ).pOnly(bottom: 10),
            "Voucher".text.size(22).bold.make().pOnly(bottom: 10),
            Tile(
                    text: const Text("Voucher"),
                    color: Colors.grey[100],
                    icon: Image.asset('assets/voucher.png'))
                ,
            Tile(
                text: const Text(
                  "Add voucher code",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                color: Colors.grey[100],
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                )).pOnly(bottom: 10),
            "Permotions".text.size(18).bold.make().pOnly(bottom: 10),
            Tile(
                text: const Text(
                  "Add Promo code",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                color: Colors.grey[100],
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                )),
          ],
        ).pSymmetric(h: 15),
      ),
    );
  }
}
