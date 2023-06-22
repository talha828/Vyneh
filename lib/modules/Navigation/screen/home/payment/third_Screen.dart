// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

import 'fourth_screen.dart';

class Wallet_ThirdScreen extends StatefulWidget {
  const Wallet_ThirdScreen({super.key});

  @override
  State<Wallet_ThirdScreen> createState() => _Wallet_ThirdScreenState();
}

class _Wallet_ThirdScreenState extends State<Wallet_ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar:  AppBar(
        leading: IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back)),
        title: const Text('Vyneh Cash'),backgroundColor: Colors.black,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.grey[200],
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 1 / 4.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    "Vyneh Cash".text.size(16).make().pOnly(bottom: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "PKR  4.00".text.bold.size(40).make(),
                        const Icon(Icons.arrow_forward_ios)
                      ],
                    ).pOnly(bottom: 10),
                    "Tap Balance details to learn more about the types of your Uber Cash fund"
                        .text
                        .size(23)
                        .color(Colors.grey[700])
                        .make()
                        .pOnly(bottom: 35),
                    Container(
                            width: 130,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.black),
                            child: "Balance details"
                                .text
                                .color(Colors.white)
                                .make()
                                .centered())
                        .onTap(() {
                      Get.to(const DetailScreen());
                    })
                  ],
                ).p(15),
              ).pOnly(bottom: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "September 2021 ".text.make().pOnly(
                        bottom: 20,
                      ),
                  const TIle1(
                    title: "Refund",
                    subtitle: "September 4",
                    trailing: "PKR 1.00",
                  ),
                  const Divider(),
                  const TIle1(
                    title: "Change Recieved",
                    subtitle: "September 4",
                    trailing: "PKR 300",
                  ),
                  const Divider(),
                  const TIle1(
                    title: "Mini",
                    subtitle: "September 4",
                    trailing: "-PKR 1.00",
                  ),
                  const Divider(),
                  const TIle1(
                    title: "Uber",
                    subtitle: "September 4",
                    trailing: "-PKR 70.00",
                  ).pOnly(bottom: 20),
                  "Novemeber 2020".text.make().pOnly(
                        bottom: 20,
                      ),
                  const TIle1(
                    title: "Customer Support",
                    subtitle: "September 4",
                    trailing: "PKR 80.00",
                  )
                ],
              ).pSymmetric(h: 15)
            ],
          ),
        ),
      ),
    );
  }
}

class TIle1 extends StatelessWidget {
  const TIle1({
    Key? key,
    this.title,
    this.subtitle,
    this.trailing,
  }) : super(key: key);
  final title;
  final subtitle;
  final trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 0,
      ),
      title: "$title".text.bold.make(),
      subtitle: "$subtitle".text.make(),
      trailing: "$trailing".text.bold.make(),
    );
  }
}
