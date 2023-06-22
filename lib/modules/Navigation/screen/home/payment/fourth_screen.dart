import 'package:flutter/material.dart';
import 'package:kaar_app/modules/Navigation/screen/home/payment/widget/listtile.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back)),
        title: const Text('Details'),backgroundColor: Colors.black,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Tile(
              text: const Text("Customer Support"),
              subtitle: const Text("PKR 1.00"),
              color: Colors.grey[100],
              icon: Image.asset('assets/voucher.png')),
          const Divider().pOnly(left: 40),
          Tile(
                  text: const Text("Change"),
                  subtitle: const Text("PKR 3.00"),
                  color: Colors.grey[100],
                  icon: Image.asset('assets/voucher.png'))
              .pOnly(bottom: 10),
          const Divider().pOnly(left: 40),
        ],
      ).pOnly(left: 10),
    );
  }
}
