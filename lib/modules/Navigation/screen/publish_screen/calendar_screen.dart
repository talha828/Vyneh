// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'package:velocity_x/velocity_x.dart';

import 'gone_Schedule_screen.dart';

class Calendar_Screen extends StatefulWidget {
  const Calendar_Screen({super.key});

  @override
  State<Calendar_Screen> createState() => _Calendar_ScreenState();
}

class _Calendar_ScreenState extends State<Calendar_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        title: 
            'when are you going?'.text.size(25).semiBold.gray900.make().py32(),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.blue,
            )),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 20),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       'when are you going?'.text.size(35).semiBold.gray900.make().py32(),
      //       Scaffold(
      //         body: 
             body: PagedVerticalCalendar(
                minDate: DateTime.now().subtract(const Duration(days: 365)),
                maxDate: DateTime.now().add(const Duration(days: 365)),
                initialDate: DateTime.now().add(const Duration(days: 3)),
                invisibleMonthsThreshold: 1,
                startWeekWithSunday: true,
                onMonthLoaded: (year, month) {
                  // on month widget load
                },
                onDayPressed: (value) {
                  // on day widget pressed
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Gone_Schedule_Screen()));
                },
                onPaginationCompleted: (direction) {
                  // on pagination completion
                },
              ),
    );
  }
}
