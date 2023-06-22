// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:kaar_app/modules/Navigation/screen/publish_screen/yes_sure_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class Gone_Schedule_Screen extends StatefulWidget {
  const Gone_Schedule_Screen({super.key});

  @override
  State<Gone_Schedule_Screen> createState() => _Gone_Schedule_ScreenState();
}

class _Gone_Schedule_ScreenState extends State<Gone_Schedule_Screen> {

  TimeOfDay _timeOfDay = const TimeOfDay(hour: 12, minute: 00);
    //Time Picker Function
  void _showTimePicker(){
    showTimePicker(
        context: context,
        initialTime: TimeOfDay.now()).then((value){
          setState(() {
            _timeOfDay = value!;
          });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.blue,
            )),
      ),
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            'At what time will you pick passengers up?'.text.size(38).semiBold.gray900.make().py32(),
            InkWell(
              onTap: (){
                _showTimePicker();
              },
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Vx.gray400),
                  borderRadius: BorderRadius.circular(50),
                  
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     _timeOfDay.format(context).text.size(45).bold.gray800.make().px(35),
                    const Icon(Icons.arrow_drop_down_sharp,size: 40,color: Colors.blue,)
                  ],
                ),
              ).px(25),
            )
         ]
    )),
    floatingActionButton: FloatingActionButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Yes_Sure_screen()));
    },child: const Icon(Icons.arrow_forward,size: 20,),).p(15),
      );
  }
}