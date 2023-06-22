// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class Sos_Screen extends StatefulWidget {
  const Sos_Screen({super.key});

  @override
  State<Sos_Screen> createState() => _Sos_ScreenState();
}

class _Sos_ScreenState extends State<Sos_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SOS Screen'),
        centerTitle: true,
      ),
      body: Center(child: ElevatedButton(onPressed: (){}, child: const Text('SOS')),), 
    );
  }
}