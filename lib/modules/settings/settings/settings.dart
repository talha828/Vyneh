// ignore_for_file: use_full_hex_values_for_flutter_colors
import 'package:flutter/material.dart';
import 'package:kaar_app/modules/Navigation/screens/userprofile.dart';
import 'package:kaar_app/modules/settings/widgets/settings_options.dart';
import '../../Navigation/widgets/drawerheader.dart';
import '../../Navigation/widgets/drawermenu.dart';
import '../../car listing/screens/listcar.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key,});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFFf333333),
    appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'Settings ',
        style: TextStyle(fontFamily: 'Poppins'),
      ),
      backgroundColor:  Colors.blue,
      actions:const [
         Icon(Icons.more_horiz,color: Colors.white,)
      ],
    ),
    drawer: Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
           Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: const drawerHeader(name: 'Corey Walker',
            address: 'New York'),
          ),
          const SizedBox(height: 20,),
          drawerMenu(onpress: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const UserProfile(
              text:'UserProfile',
            name: 'Corey Walker',
            Address:'New York'
             )));
          },
          title: 'Profile',),
           drawerMenu(onpress: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ListCar(
              text:'List Your Car',
             )));
           },
          title: 'List Car',),
           drawerMenu(onpress: (){},
          title: 'Wallet',),
           drawerMenu(onpress: (){},
          title: 'Offers',),
           drawerMenu(onpress: (){},
          title: 'Insurance',),
           drawerMenu(onpress: (){},
          title: 'Privacy',),
           drawerMenu(onpress: (){},
          title: 'Settings',),
           drawerMenu(onpress: (){},
          title: 'Log Out',),
        ],
      ),
    ),
    body: Center(
      child: Column(
        children: [
          settingsToggleMenu(
            title: const Text('Offer Alerts'),
            subtxt: const Text('Enabled'),
            icn: Icons.toggle_off_outlined, notification: true,
            ),
          settingsToggleMenu(
            title: const Text('Privacy'),
            subtxt: const Text('Enabled'),
            icn: Icons.forward,
            notification: true,
          ),
          settingsToggleMenu(
            title: const Text('App Wallet'),
            subtxt: const Text('Enabled'),
            icn: Icons.toggle_off_rounded,
            notification: true,
          ),
          settingsToggleMenu(
            title: const Text('News Letter'),
            subtxt: const Text('Enabled'),
            icn: Icons.toggle_off_outlined,
            notification: true,
          ),
          settingsToggleMenu(
            title: const Text('Notification'),
            subtxt: const Text('Enabled'),
            icn: Icons.forward,
            notification: true,
          ),
          settingsToggleMenu(
            title: const Text('Membership'),
            subtxt: const Text('Disabled'),
            icn: Icons.toggle_off_rounded,
            notification: true,
          ),
          settingsToggleMenu(
            title: const Text('Car Listing'),
            subtxt: const Text('Disabled'),
            icn: Icons.toggle_off_rounded,
            notification: true,
          ),
          settingsToggleMenu(
            title: const Text('About this app'),
            subtxt: const Text('Version 11.0'),
            icn: Icons.forward,
             
             notification: true,
          ),
        ],
      ),
    ),
  );
  }
}
