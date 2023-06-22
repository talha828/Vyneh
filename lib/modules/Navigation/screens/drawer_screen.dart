import 'package:flutter/material.dart';
import 'package:kaar_app/modules/Navigation/screens/userprofile.dart';
import '../../car listing/screens/listcar.dart';
import '../widgets/drawerheader.dart';
import '../widgets/drawermenu.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const drawerHeader(
              img: 'assets/images/pic.jpg',
              name: 'Corey Walker',
              address: 'New York'),
          // const SizedBox(height: 20,),
          drawerMenu(
            onpress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UserProfile(
                          text: 'UserProfile',
                          name: 'Corey Walker',
                          Address: 'New York',
                          img: 'assets/pic.jpg')));
            },
            leading: const Icon(
              Icons.person,
              color: Color(0xFF60635F),
              size: 26,
            ),
            title: 'Profile',
          ),

          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                    child: ListTile(
                  title: const Text(
                    "Add New Car",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ListCar(
                                  text: 'List',
                                )));
                  },
                )),
                const PopupMenuItem(
                    child: ListTile(
                  title: Text(
                    "Exiting Car",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                )),
              ];
            },
            child: const drawerMenu(
              leading:
                  Icon(Icons.time_to_leave, color: Color(0xFF60635F), size: 26),
              title: 'My Car',
              trailingIcon:
                  Icon(Icons.arrow_right, color: Colors.black, size: 26),
            ),
          ),

          Tile2(
            onTap: () {
              showDialog<void>(
                context: context,
                barrierDismissible: false, // user must tap button!
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('New Features'),
                    content: const Text('This Feature is Coming Soon...'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Ok'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            leading:
                const Icon(Icons.payment, color: Color(0xFF60635F), size: 26),
            title: 'Wallet',
            // Trailing: const Text("(Coming Soon)", style: TextStyle(color: Colors.blue, fontSize: 13),),
          ),
          Tile2(
            leading: const Icon(Icons.local_offer,
                color: Color(0xFF60635F), size: 26),
            title: 'Offers',
            onTap: () {},
          ),
          Tile2(
            leading: const Icon(Icons.health_and_safety_outlined,
                color: Color(0xFF60635F), size: 26),
            title: 'Insurance',
            onTap: () {
              showDialog<void>(
                context: context,
                barrierDismissible: false, // user must tap button!
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('New Features'),
                    content: const Text('This Feature is Coming Soon...'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Ok'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
          drawerMenu(
            onpress: () {},
            leading: const Icon(Icons.privacy_tip_outlined,
                color: Color(0xFF60635F), size: 26),
            title: 'Privacy',
          ),
          drawerMenu(
            onpress: () {},
            leading:
                const Icon(Icons.settings, color: Color(0xFF60635F), size: 26),
            title: 'Settings',
          ),
          drawerMenu(
            onpress: () {},
            leading: const Icon(Icons.exit_to_app,
                color: Color(0xFF60635F), size: 26),
            title: 'Log Out',
          ),
        ],
      ),
    );
  }
}
