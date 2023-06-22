// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:kaar_app/modules/Navigation/screen/home/cities_list.dart';
import 'package:textfield_search/textfield_search.dart';
import 'package:velocity_x/velocity_x.dart';

import '../screen/home/search_Screen_passenger.dart';
import '../screen/index.dart';
import '../screen/notification.dart';
import '../screen/sos_Screen.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key,});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TimeOfDay _timeOfDay = const TimeOfDay(hour: 12, minute: 00);
  DateTime _dateTime = DateTime.now();


  // Time Picker Function
  void _showTimePicker(){
    showTimePicker(
        context: context,
        initialTime: TimeOfDay.now()).then((value){
          setState(() {
            _timeOfDay = value!;
          });
    });
  }

  // Date Picker Function
  void _showDatePicker(){
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2050)
    ).then((value){
      setState(() {
        _dateTime = value!;
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      // automaticallyImplyLeading: false,
      centerTitle: true,
      title: const Text(
        'Search',
      ).text.black.make(),
      actions: [
        IconButton(onPressed: (){Get.to(const Notification_Screen());}, icon: const Icon(Icons.notifications)),
        IconButton(onPressed: (){Get.to(const Index_Screen(),);}, icon: const Icon(Icons.mail)),
        IconButton(onPressed: (){Get.to(const Sos_Screen());}, icon: const Icon(Icons.sos))
      ],
    ),
    //  Drawer
    // drawer: const MyDrawer(),
    //  Bottom Navigation bar
    // bottomNavigationBar: const BottomNavigator(),
    body: Stack(
      children: [
        SizedBox(
          width: double.infinity,
            height: 350,
            child: Image.asset('assets/car1.jpg',
              fit: BoxFit.cover,)),

         const Padding(
           padding: EdgeInsets.only(top: 30),
           child: Align(
             alignment: Alignment.topCenter,
             child: Text("Your pick of ride at low \n price",
               style: TextStyle(color: Colors.black, fontSize: 22, fontFamily: 'Poppins',),
                textAlign: TextAlign.center,
             ),
           ),
         ),
          //  Card in Center
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 280,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                Field(icon: const Icon(Icons.circle_outlined, size: 20,), hintText: 'Leaving from', onpress: () {  },),
                                const SizedBox(height: 10, ),
                                Field(icon: const Icon(Icons.circle_outlined, size: 20), hintText: 'Going to', onpress: () {  },),
                                InkWell(
                                  onTap: (){
                                    _showTimePicker();
                                  },
                                  child: SizedBox(
                                    height: 40,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 13, top: 5),
                                      child: Row(
                                        children: [
                                          const Icon(Icons.av_timer, color: Colors.grey),
                                          const SizedBox(width: 12,),
                                          Text(_timeOfDay.format(context), style: const TextStyle(fontSize: 15),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Divider( color: Colors.grey,),
        
                                Padding(
                                  padding: const EdgeInsets.only(left: 13),
                                  child: SizedBox(
                                    height: 40,
                                    child: Row(
                                      children: [
                                       Expanded(
                                         flex: 1,
                                         child: Row(
                                           children: [
                                             //Date Picker
                                             InkWell(
                                               onTap: (){
                                                 _showDatePicker();
                                               },
                                               child: Row(
                                                 children: [
                                                   const Icon(Icons.calendar_month_outlined, color: Colors.grey,),
                                                   const SizedBox(width: 10,),
                                                   Text("${_dateTime.day}-${_dateTime.month}-${_dateTime.year}", style: const TextStyle(fontSize: 15)),
                                                 ],
                                               ),
                                             ),
                                            //  const SizedBox(width: 5,),
                                           ],
                                         ),
                                       ),
                                        const VerticalDivider(color: Colors.grey,),
                                        Expanded(
                                          flex: 1,
                                          child: Stack(
                                            children: [
                                              //  total PAssenger
                                              InkWell(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: const [
                                                    Icon(Icons.person, color: Colors.grey,),
                                                    VxStepper()
                                                  ],
                                                ),
                                              ),
                                            ],
        
                                          ),
        
                                        )
                                      ],
        
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10,),
        
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Get.to(const Search_Passenger_Screen());
                            },
                            child: Container(
                              height: 45,
                              decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )
                              ),
                              child: const Center(child: Text("Search", style: TextStyle(color: Colors.white,),),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
        
                  ),
                ),
                 ListTile(
                      leading: const Icon(Icons.more_time_sharp),
                      title: Row(children: [
                        'Vienna'.text.make(),
                        const Icon(Icons.arrow_forward),
                        'Budapest'.text.make(),
                      ],),
                      subtitle: const Text('2 passengers'),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    
                    ListTile(
                      leading: const Icon(Icons.more_time_sharp),
                      title: Row(children: [
                        'Budapest'.text.make(),
                        const Icon(Icons.arrow_forward),
                        'Vienna'.text.make(),
                      ],),
                      subtitle: const Text('1 passenger'),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                       ListTile(
                      leading: const Icon(Icons.more_time_sharp),
                      title: Row(children: [
                        'Budapest'.text.make(),
                        const Icon(Icons.arrow_forward),
                        'Vienna'.text.make(),
                      ],),
                      subtitle: const Text('3 passengers'),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
              ],
            ),
          ),
        )

      ],
    ),
  );
  }
}

class Field extends StatelessWidget {
  
  final CitiesList _citiesList = CitiesList();
  final TextEditingController _Controller = TextEditingController();
  Field({
    Key? key, required this.icon, required this.hintText,required this.onpress,
  }) : super(key: key);

  final Icon icon;
  final String hintText;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return TextFieldSearch(
                    initialList: _citiesList.Cities,
                    label: 'Enter City Name',
                    controller: _Controller,
                    decoration: InputDecoration(
                       hintText: hintText,
        prefixIcon: InkWell(
            onTap: onpress,
            child: icon)
                       ));
    
    //  TextField(
    //   decoration: InputDecoration(
    //     hintText: hintText,
    //     prefixIcon: InkWell(
    //         onTap: onpress,
    //         child: icon)
    //   ),
    // );
  }
}
