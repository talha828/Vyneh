// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:velocity_x/velocity_x.dart';

class Phone_Verify_Screen extends StatefulWidget {
  const Phone_Verify_Screen({super.key});

  @override
  State<Phone_Verify_Screen> createState() => _Phone_Verify_ScreenState();
}

class _Phone_Verify_ScreenState extends State<Phone_Verify_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              color: Colors.blue,
              size: 30,
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Please verify your mobile number".text.size(40).bold.make(),
            const SizedBox(
              height: 20,
            ),
            IntlPhoneField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 25),
                  filled: true,
                  fillColor: const Color(0xFFE4E9E4),
                  hintText: "Phone Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
              initialCountryCode: 'Pakistan',
              onChanged: (phone) {
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.arrow_forward),
      ).px12(),
    );
  }
}
