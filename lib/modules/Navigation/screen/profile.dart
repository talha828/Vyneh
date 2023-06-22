// ignore_for_file: camel_case_types, duplicate_ignore
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:kaar_app/modules/Navigation/screen/home/payment/add_payment_screen.dart';
import 'package:kaar_app/modules/Navigation/screen/home/setting_screen_p.dart';
import 'package:kaar_app/modules/Navigation/screen/search_list.dart';
import 'package:kaar_app/modules/authentication/screens/login.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../authentication/screens/change_password.dart';
import 'eidt_profile.dart';
import 'invitation/invite_friend_screen.dart';

// ignore: camel_case_types
class Profile_Page_Screen extends StatefulWidget {
  const Profile_Page_Screen({super.key});

  @override
  State<Profile_Page_Screen> createState() => _Profile_Page_ScreenState();
}

class _Profile_Page_ScreenState extends State<Profile_Page_Screen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async=>false,
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Account').text.bold.black.make(),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          // actions: [
          //   IconButton(
          //       onPressed: () {
          //         Get.to(setting_Page_Screen());
          //       },
          //       icon: Icon(
          //         Icons.settings_outlined,
          //         color: Vx.black,
          //       ))
          // ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration:
                      BoxDecoration(color: Vx.gray500, shape: BoxShape.circle),
                ).py16(),
                Text('Anastasia Sya').text.size(25).bold.make(),
                Text('Florda, Us').text.uppercase.size(20).gray300.make().py16(),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: Vx.blue500),
                  child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration:
                          BoxDecoration(color: Vx.white, shape: BoxShape.circle),
                      child: Text('70%').text.amber500.make().centered(),
                    ),
                    title: Text('Complete your profile to stand out')
                        .text
                        .size(18)
                        .white
                        .make(),
                    trailing: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Vx.amber400,
                      ),
                      child: Text('Edit Profile').text.bold.white.make(),
                    ).onTap(() {
                      Get.to(Edit_Profile_Screen());
                    }),
                  ).centered(),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child:
                      Text('Account setting').text.gray400.bold.size(18).make(),
                ).py16(),
                Container(
                  decoration: BoxDecoration(
                      color: Vx.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Vx.gray100,
                            blurRadius: 3.0,
                            spreadRadius: 4.0,
                            offset: Offset.zero)
                      ]),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Custom_list(
                          'Account Information',
                          'Change your account information',
                          Icons.person_outline,
                          () {}),
                      Divider().px8(),
                      Custom_list('Payments Methods',
                          'Add your credit or debit card', Icons.credit_card, () {
                        Get.to(AddPaymentScreen());
                      }),
                      Divider().px8(),
                      Custom_list('Change Password', 'Change your password',
                          Icons.lock_outlined, () {
                        Get.to(Change_Password_Screen());
                      }),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Other').text.gray400.bold.size(18).make(),
                ).py16(),
                Container(
                  decoration: BoxDecoration(
                      color: Vx.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Vx.gray100,
                            blurRadius: 3.0,
                            spreadRadius: 4.0,
                            offset: Offset.zero)
                      ]),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Custom_list(
                          'My Vyneh', 'See your Plans', Icons.history_outlined,
                          () {
                        Get.to(Search_List_Screen());
                      }),
                      Divider().px8(),
                      Custom_list(
                          'Contact Support',
                          'any problem you can contact',
                          Icons.contact_support_outlined,
                          () {}),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('About Page').text.gray400.bold.size(18).make(),
                ).py16(),
                Container(
                  decoration: BoxDecoration(
                      color: Vx.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Vx.gray100,
                            blurRadius: 3.0,
                            spreadRadius: 4.0,
                            offset: Offset.zero)
                      ]),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Custom_list('Invite your friends', 'Get \$10 each invation',
                          Icons.person_add_alt, () {
                                                Get.to(Invite_Friends_Screen()); 
                          }),
                      Divider().px8(),
                      Custom_list(
                          'My Coins', 'your coins', Icons.circle_rounded, () {}),
                      Divider().px8(),
                      Custom_list('My Rewards', 'your Rewards',
                          Icons.card_giftcard_outlined, () {}),
                             Divider().px8(),
                      Custom_list('My Setting', 'set all the setting',
                          Icons.settings, () {
                            Get.to(setting_Page_Screen());
                          }),
                      Divider().px8(),
                      Custom_list(
                          'Logout', 'Logout your Account', Icons.logout_outlined,
                          () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              actionsAlignment: MainAxisAlignment.spaceAround,
                              title: Text("Log Out"),
                              content: Text("Are you sure you want to logout?"),
                              actions: [
                                TextButton(
                                  child: Text("Close"),
                                  onPressed: () {
                                    Get.back();
                                  },
                                ),
                                ElevatedButton(
                                  child: Text("Logout"),
                                  onPressed: () {
                                    Get.to(LoginScreen());
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }),
                    ],
                  ),
                ),
              ],
            ).px16(),
          ),
        ),
      ),
    );
  }

  ListTile Custom_list(String title, String subtitle, var leading, var tap) {
    return ListTile(
      onTap: tap,
      leading: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle, border: Border.all(color: Vx.gray300)),
        child: Icon(
          leading,
          color: Vx.gray400,
        ).p(10),
      ),
      title: Text(title).text.bold.make(),
      subtitle: Text(subtitle).text.make(),
      // trailing: Icon(Icons.arrow_forward_ios),
    );
  }


}

//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           'Kamlesh'.text.size(35).bold.make(),
//                           SizedBox(
//                             height: MediaQuery.of(context).size.height * 0.02,
//                           ),
//                           const Text('Newcomer').text.size(20).gray500.make()
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Container(
//                             height: 100,
//                             width: 100,
//                             decoration: const BoxDecoration(
//                                 color: Vx.gray200, shape: BoxShape.circle),
//                             child: const Icon(
//                               Icons.person,
//                               size: 70,
//                               color: Vx.white,
//                             ),
//                           ),
//                           const Icon(Icons.arrow_forward_ios)
//                         ],
//                       )
//                     ],
//                   )
//                  ,SizedBox(
//                     height: MediaQuery.of(context).size.height * 0.05,
//                   ),
//                 'Add Profile picture'.text.size(20).cyan500.make(),
//                 'Edit personal detail'.text.size(20).cyan500.make().py32(),
//                 const Divider(),
//                 'Verify your Profile'.text.size(25).bold.gray700.make().py32(),
//                 Row(children: [
//                   Container(
//                     height: 30,
//                     width: 30,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(color: Vx.cyan500)
//                     ),
//                     child: const Icon(Icons.add,color: Vx.cyan500,),
//                   ),
//                 'Edit personal detail'.text.size(20).cyan500.make().px24().py32(),
//                 ],),
//                   Row(children: [
//                   Container(
//                     height: 30,
//                     width: 30,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(color: Vx.cyan500)
//                     ),
//                     child: const Icon(Icons.add,color: Vx.cyan500,),
//                   ),
//                 'kamleshitain@gmail.com'.text.size(20).cyan500.make().px24(),
//                 ],),
//                  Row(children: [
//                   Container(
//                     height: 30,
//                     width: 30,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(color: Vx.cyan500)
//                     ),
//                     child: const Icon(Icons.add,color: Vx.cyan500,),
//                   ),
//                 'Confirm phone number'.text.size(20).cyan500.make().px24().py32(),
//                 ],),


//                  const Divider(thickness: 10,),
//                   'About you'.text.size(25).bold.gray700.make().py32(),
//                 Row(children: [
//                   Container(
//                     height: 30,
//                     width: 30,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(color: Vx.cyan500)
//                     ),
//                     child: const Icon(Icons.add,color: Vx.cyan500,),
//                   ),
//                 'Add a mini bio'.text.size(20).cyan500.make().px24().pOnly(top: 32),
//                 ],),

//                 InkWell(
//                   onTap: (){
//                     Get.to(const become_driver_screen());
//                   },
//                   child: Row(children: [
//                     Container(
//                       height: 30,
//                       width: 30,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(color: Vx.cyan500)
//                       ),
//                       child: const Icon(Icons.add,color: Vx.cyan500,),
//                     ),
//                   'Become Driver'.text.size(20).cyan500.make().px24().py32(),
//                   ],),
//                 ),
//                   Row(children: [
//                   Container(
//                     height: 30,
//                     width: 30,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(color: Vx.cyan500)
//                     ),
//                     child: const Icon(Icons.add,color: Vx.cyan500,),
//                   ),
//                 'Add my preferences'.text.size(20).cyan500.make().px24(),
//                 ],),

//                  InkWell(
//                   onTap: (){
//                     Get.to(const Wallet_Screen());
//                   },
//                   child: Row(children: [
//                     Container(
//                       height: 30,
//                       width: 30,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(color: Vx.cyan500)
//                       ),
//                       child: const Icon(Icons.add,color: Vx.cyan500,),
//                     ),
//                   'My Wallet'.text.size(20).cyan500.make().px24().py32(),
//                   ],),
//                 ),
//                     InkWell(
//                   onTap: (){
//                     Get.to(const Search_List_Screen());
//                   },
//                   child: Row(children: [
//                     Container(
//                       height: 30,
//                       width: 30,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(color: Vx.cyan500)
//                       ),
//                       child: const Icon(Icons.add,color: Vx.cyan500,),
//                     ),
//                   'Search'.text.size(20).cyan500.make().px24(),
//                   ],),
//                 ),
//                 const SizedBox(height: 25),

//               //  Divider(),
//               //  'Vehicles'.text.size(25).bold.gray700.make().py32(),
//               //   Row(children: [
//               //     Container(
//               //       height: 30,
//               //       width: 30,
//               //       decoration: BoxDecoration(
//               //         shape: BoxShape.circle,
//               //         border: Border.all(color: Vx.cyan500)
//               //       ),
//               //       child: Icon(Icons.add,color: Vx.cyan500,),
//               //     ),
//               //   'Add vehicle'.text.size(20).cyan500.make().px24(),
//               //   ],)
//                 ],
//               ),
//             ),
//           ),

//       //Account Tab
//        Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
//        child: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//           buildText('Ratings'),
//           const Divider(thickness: 2,),
//           buildText('Notifications, email & SMS').py16(),
//           buildText('Change password').py8(),
//           buildText('Postal address').py16(),
//           const Divider(thickness: 2,),
//           buildText('Emergency Contact').py16(),
//        InkWell(
//         onTap: (){
//           Get.to(const AddPaymentScreen());
//         },
//          child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//             'Payments'.text.gray800.size(20).make().py12(),
//             const Icon(Icons.arrow_forward_ios)
//           ],).py16(),
//        ),
//           const Divider(thickness: 2,),
//           buildText('Help').py16(),
//           buildText('Terms & Conditions').py8(),
//           buildText('Data protection').py16(),
//           buildText('Licenses').py16(),
//           const Divider(thickness: 2),
//           TextButton(onPressed: (){}, child: 'Log out'.text.cyan500.size(20).make())
//         ],),),
//        )
//         ]),
//       ),
//     );
 
