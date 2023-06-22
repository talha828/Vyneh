import 'package:flutter/material.dart';
import 'package:kaar_app/modules/Navigation/screen/search_list.dart';
import '../../Navigation/screen/home_screen.dart';
import '../../Navigation/screen/profile.dart';
import '../../Navigation/screen/publish.dart';
import '../../Navigation/screen/ride.dart';
import '../../Navigation/screens/navigationscreen.dart';

class BottomNavigator extends StatefulWidget {
  // bool bar = false;
   BottomNavigator({super.key,});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _selectedIndex = 0;
 
 

  static const List<Widget> _pagesOptions = <Widget>[ 
   Home_Screen() ,
    SearchScreen(),
    // Publish_Screen(),
    // your_rides_Screen(),
    Search_List_Screen(),
    Profile_Page_Screen(),  
  ];  

void _onItemTapped(int index) {
  //  if (index == 0 && widget.bar == true) {
  //   setState(() {
  //     _selectedIndex = 0;
  //   });
  //   Get.to(Driver_Mode_on());
  // } else {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
 setState(() {
      _selectedIndex = index;
    });
}

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: WillPopScope(
        onWillPop: ()async=>false,
        child: Scaffold(
          body: _pagesOptions.elementAt(_selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
              elevation: 14,
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
                // BottomNavigationBarItem(
                //   icon: Icon(Icons.add_circle_outline),
                //   label: 'Publish',
                // ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.car_crash),
                  label: 'My Vyneh',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined),
                  label: 'Profile',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.black,
              showUnselectedLabels: true,
              onTap: _onItemTapped,
            ),
        ),
      ),
    );

  }
}
