// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Notification_Screen extends StatefulWidget {
  const Notification_Screen({super.key});

  @override
  State<Notification_Screen> createState() => _Notification_ScreenState();
}

class _Notification_ScreenState extends State<Notification_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notification'),),
      body: ListView.builder(
        itemBuilder: (context, index){
        return const Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text("Vyneh Update"),
            subtitle: Text('Hum he kon'),
            
          ),
        );
      }),
    );
  }
}