import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:velocity_x/velocity_x.dart';

class Invite_Mobile_Screen extends StatelessWidget {
  const Invite_Mobile_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Invite Friend"),
        // title: "Invite Friend".text.bold.size(22).color(Colors.black).make(),
        centerTitle: true,
        // backgroundColor: Colors.white,
        elevation: 0,
        // leading: IconButton(onPressed: (){Get.back();}, icon: Icon(
        //   Icons.arrow_back,
        //   color: Colors.black,
        // ),)
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "Share the word and earn\nexisting benefits."
              .text
              .align(TextAlign.center)
              .size(22)
              .align(TextAlign.center)
              .lineHeight(1.5)
              .make()
              .centered()
              .pOnly(top: 20, bottom: 30),
          SizedBox(
            height: MediaQuery.of(context).size.height * 1 / 3.5,
            width: double.infinity,
            child: Image.network(
                'https://media.istockphoto.com/id/1250252215/vector/hands-holding-a-phone-with-contacts-of-friends-refer-a-friend-concept.jpg?s=612x612&w=is&k=20&c=fGraz5lic958hucBjvXwgRrw0pLa_Y3c2GyaIN0Z7lk='),
          ).pOnly(bottom: 30),
          "Friend's Name".text.size(16).bold.make().pOnly(bottom: 8),
          TextField(
            decoration: InputDecoration(
                hintText: "Enter Name",
                fillColor: Colors.grey[100],
                filled: true,
                suffixIcon: const Icon(
                  Icons.check_circle,
                  color: Color(0xFF5B2C6F),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ).pOnly(bottom: 20),
          "Mobile Number".text.size(16).bold.make().pOnly(bottom: 8),
          IntlPhoneField(
            dropdownIconPosition: IconPosition.leading,
            flagsButtonMargin: const EdgeInsets.only(left: 10),
            showCountryFlag: false,
            initialCountryCode: 'PK',
            onCountryChanged: (country) {},
            dropdownTextStyle: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
                hintText: "Mobile Number",
                fillColor: Colors.grey[100],
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          Row(
            children: [
              const Icon(
                Icons.check_circle,
                color: Colors.green,
              ),
              "  Success !".text.size(16).color(Colors.green).make()
            ],
          ).pOnly(bottom: 20),
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                color: const Color(0xFF5B2C6F),
                borderRadius: BorderRadius.circular(10)),
            child: "Invite"
                .text
                .size(20)
                .color(Colors.white)
                .make()
                .centered()
                .onTap(() {
              // alert.showMyDialog(context);
            }),
          )
        ],
      ).pSymmetric(h: 30),
    );
  }
}
