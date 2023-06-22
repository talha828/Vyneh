// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:kaar_app/modules/Navigation/screen/publish_screen/pick_up.dart';

class Publish_Screen extends StatefulWidget {
  const Publish_Screen({super.key});

  @override
  State<Publish_Screen> createState() => _Publish_ScreenState();
}

class _Publish_ScreenState extends State<Publish_Screen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PickUpScreen()
    );
  }
}