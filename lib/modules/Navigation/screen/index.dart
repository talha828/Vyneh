// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:velocity_x/velocity_x.dart';

import 'chat_screen.dart';

class Index_Screen extends StatefulWidget {
  const Index_Screen({super.key});

  @override
  State<Index_Screen> createState() => _Index_ScreenState();
}

class _Index_ScreenState extends State<Index_Screen> {
List<String> title = [
  'Parsley Montana',
  'Benjamin Evalent',
  'Lurch Schpellchek',
  'Max Conversion',
  'Eleanor Fant',
  'Bartholomew Shoe',
  'Caspian Bellevedere'
  'Parsley Montana',
  'Benjamin Evalent',
  'Lurch Schpellchek',
   'Eleanor Fant',
  'Bartholomew Shoe',

];
List<String> messagetime = [
'1 min ago',
'5 min ago',
'10 min ago',
'yesterday',
'1 week ago',
'15 min ago',
'yesterday',
'30 min ago',
'45 min ago',
'1 week ago',
'yesterdat'
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: Colors.transparent,
        title: Text('Messages').text.black.make(),
        centerTitle: true,

      ),
      body: ListView.builder(
        itemCount: title.length,
         itemBuilder: (context, index){
          return Card(
            child: ListTile(
              onTap: (){
                showMyDialog(context);
              },
              title: Text(title[index]),
              subtitle: Text(messagetime[index]),
              trailing: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  // color: Vx.amber200,
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('assets/profile.jpg'),fit: BoxFit.cover)
                ),
              ),
            ),
          );
         },
        ).px(12).py(20),
      
    );
  }

  void showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          actionsPadding: EdgeInsets.symmetric(horizontal: 0),
          titlePadding: EdgeInsets.symmetric(horizontal: 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 25,
            ),
            title: Text("Kamlesh"),
            subtitle: Text("Active Now"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.call,
                  size: 25,
                  color: Colors.black,
                ).onTap(() {
                }),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.cancel_sharp,
                  size: 25,
                  color: Colors.black54,
                ).onTap(() {
                  Get.back();
                }),
              ],
            ),
            // contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 2 / 3,
                  height: MediaQuery.of(context).size.height * 1 / 5,
                )
              ],
            ),
          ),
          actions: [
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 50,
                width: MediaQuery.of(context).size.width * 1 / 2,
                decoration: const BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                ),
                child: "Np, see yap to pick up point in 10 mint"
                    .text
                    .color(Colors.white)
                    .make(),
              ),
            ).pOnly(bottom: 15, right: 10),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 50,
                width: MediaQuery.of(context).size.width * 1 / 2,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: "Np, see yap to pick up point in 10 mint".text.make(),
              ).pOnly(bottom: 4, left: 10),
            ),
            Divider(),
            TextField(
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  hintText: "Enter Message",
                  suffixIcon: const Icon(Icons.send),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10))),
            )
          ],
        );
      },
    );
  }
}