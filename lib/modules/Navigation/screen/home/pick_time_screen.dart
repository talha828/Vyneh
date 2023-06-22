// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Now_Time_screen extends StatefulWidget {
  const Now_Time_screen({super.key});

  @override
  State<Now_Time_screen> createState() => _Now_Time_screenState();
}

class _Now_Time_screenState extends State<Now_Time_screen> {
  TimeOfDay _timeOfDay = const TimeOfDay(hour: 12, minute: 00);
  DateTime _dateTime = DateTime.now();

  // Time Picker Function
  void _showTimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  //Date Picker Function
  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2050))
        .then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.white,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              size: 40,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              // Image.asset('assets/Social.png',width: double.infinity,height: 250,).py32(),

              'When do you want to Picked up?'
                  .text
                  .size(45)
                  .semiBold
                  .gray800
                  .make()
                  .py32(),
              // Date Picker
              InkWell(
                onTap: () {
                  _showDatePicker();
                },
                child: 
                    Text(
                        "${_dateTime.day}-${_dateTime.month}-${_dateTime.year}",
                        style: const TextStyle(fontSize: 25)),
                
              ).py16(),

              const Divider(
                color: Colors.grey,
              ),

              InkWell(
                onTap: () {
                  _showTimePicker();
                },
                child: 
                        Text(
                          _timeOfDay.format(context),
                          style: const TextStyle(fontSize: 25),
                        ),
                    
              ).pOnly(bottom: 25,top: 12),

              ListTile(
                leading: const Icon(Icons.badge,color: Colors.black,),
                title: 'Choose your exact pickup time up to 30 days in advance'
                    .text
                    .size(18)
                    .make(),
              ),
              const Divider(thickness: 2),
              ListTile(
                leading: const Icon(Icons.label,color: Colors.black,),
                title: 'Extra wait time include to meet your ride'
                    .text
                    .size(18)
                    .make(),
              ),
              const Divider(thickness: 2),
              ListTile(
                leading: const Icon(Icons.browse_gallery,color: Colors.black,),
                title: 'Cancel at no charge up to 60 days in advance'
                    .text
                    .size(18)
                    .make(),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: 'See terms'.text.underline.size(18).bold.make(),
              ).pOnly(bottom: 200, top: 30),
              Container(
                width: double.infinity,
                height: 50,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: 'Set picked time'.text.size(20).white.make().centered(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
