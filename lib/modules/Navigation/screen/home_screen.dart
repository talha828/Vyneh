// ignore_for_file: camel_case_types, non_constant_identifier_names
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:kaar_app/modules/Navigation/screen/driver_mode_on.dart';
import 'package:kaar_app/modules/Navigation/screen/profile_screen/get_Image_fun.dart';
import 'package:kaar_app/modules/welcome/widgets/bottom_navigation_bar.dart';
import 'package:velocity_x/velocity_x.dart';
import 'home/pick_time_screen.dart';
import 'home/where_to_Location.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {

GetImage controller = Get.put(GetImage());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text('Request').text.black.make(),
          bottom: TabBar(
              labelStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              labelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.black,
              unselectedLabelColor: Colors.black45,
              tabs: [
                Tab(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(image: AssetImage('assets/car-wash.png')).p(5),
                     const Text('Rides')],),
                ).pOnly(bottom: 12),
                Tab(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  const Image(image: AssetImage('assets/vegetables.png')).p(5),
                  const Text('Delivery')
                ],))
              ]),
        ),
        body: TabBarView(children: [
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical:20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const Text('Request',style: TextStyle(fontSize: 18),).pOnly(bottom: 10),
                  TextFormField(
                    onTap: ()
                    {
                      Get.to(const where_to_Location_Screen());
                    },
                    decoration: InputDecoration(
                      filled: true,
                fillColor: const Color(0xFFE4E9E4),
                prefixIcon: const Icon(Icons.search, size: 30,color: Colors.black87,).p(10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: BorderSide.none
                ),
                hintText: 'Where to?',
                // label:Text("Where to?"),
                hintStyle:const TextStyle(fontSize: 22,color: Colors.black87) ,
                       suffixIcon: InkWell(
                        onTap: (){
                          Get.to(()=>const Now_Time_screen());
                        },
                         child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white
                          ),
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:const [
                             Icon(Icons.timelapse),
                            Text("Now"),
                            Icon(Icons.arrow_drop_down)
                          ],),
                                             ).py(6).px(15),
                       ) ,
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      height: 100,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300]
                      ),
                      child: const Icon(Icons.work)),
                    title: const Text("Work",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    subtitle: const Text("1455 Market St",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                  ).pOnly(top: 12),
                  const Divider(),
                   ListTile(
                    leading: Container(
                      height: 100,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300]
                      ),
                      child: const Icon(Icons.home)),
                    title: const Text("Home",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    subtitle: const Text("1455 Market St",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                  ),
                  const Divider(thickness: 8,).py12(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                    Text('Suggestions',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    
                    Text('See all',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                  ],).py16(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Custom_Icon('Ride','assets/hatchback.png',(){}),
                    Custom_Icon('Package','assets/box.png',(){}),
                    Custom_Icon('Reserve','assets/reservation.png',(){}),
                    
                    Custom_Icon('Driver mode on','assets/driver.png',(){Get.to((){return  Driver_Mode_on();});})
                  ],).pOnly(bottom: 25),
                const Text("Way to plan with Vyneh",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)).py12(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                      
                      custom_cursol('assets/3.jpg').px16(),
                      custom_cursol('assets/1.jpg').px16(),
                      custom_cursol('assets/5.jpg').px16(),
                      custom_cursol('assets/2.jpg').px16(),
                      custom_cursol('assets/4.jpg').px16(),
                    
                  ],),
                )
                ]
                ))),
   Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical:20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                    child: TextFormField(
                      onTap: ()
                      {
                        Get.to(()=>const where_to_Location_Screen());
                      },
                      decoration: InputDecoration(
                        filled: true,
                                  fillColor: const Color(0xFFE4E9E4),
                                  prefixIcon: const Icon(Icons.search, size: 25,color: Colors.black87,).p(10),
                                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                    borderSide: BorderSide.none
                                  ),
                                  hintText: 'Where to?',
                                  // label:Text("Where to?"),
                                  hintStyle:const TextStyle(fontSize: 22,color: Colors.black87) ,
                         suffixIcon: InkWell(
                          onTap: (){
                            Get.to(()=>const Now_Time_screen());
                          },
                           child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white
                            ),
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:const [
                                Icon(Icons.timelapse),
                                Text("Now"),
                                Icon(Icons.arrow_drop_down)
                            ],),
                                               ).py(4).px(15),
                         ) ,
                      //  suffixIcon: Icon(Icons.face)
                      ),
                    ),
                  ),
                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    const Icon(Icons.contact_mail).pOnly(right: 20),
                    const Text('Choose Packages Size',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
                  ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Custom_radio("Small",1),
                    Custom_radio("Medium",2),
                    Custom_radio('Large',3)
                  ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    custom_qty(),
                     custom_qty(),
                      custom_qty()
                  ],),
                   const DropDownTextField(
                      textFieldDecoration: InputDecoration(
                          hintText: "Choose Type",                          
                      hintStyle: TextStyle(fontSize: 20),
                          border: OutlineInputBorder(),
                    ),
                      dropDownList: [
                        DropDownValueModel(name: 'Documents', value: '1'),
                        DropDownValueModel(name: 'Electronic', value: '2'),
                        DropDownValueModel(name: 'Flowers', value: '3'),
                        DropDownValueModel(name: 'Food', value: '4'),
                        DropDownValueModel(name: 'Grocery', value: '5'),
                        DropDownValueModel(name: 'Glass', value: '6'),
                        DropDownValueModel(name: 'Laundry', value: '7'),
                        DropDownValueModel(name: 'Medicines', value: '8'),
                        DropDownValueModel(name: 'Metal', value: '9'),
                      ]).py20(),
                  const Text('Requirements').text.size(20).make(),
                  Row(children: [
                    Obx(()=>
                       Checkbox(
                      value: controller.checksignatures.value,
                      onChanged: (value){
                      controller.checksignatures.value = value!;
                                       },
                      ),
                    ),
const Text('Signatures')
                  ],),
                  Row(children: [
                Obx(()=> Checkbox(
                        value: controller.checktracking.value,
                     onChanged: (value){
                      controller.checktracking.value = value!;
                     },
                      ),
                ),
                    const Text('Tracking Number'),
                  ],),
              TextFormField(
                    maxLines: 8,
                    decoration: const InputDecoration(
                      hintText: 'WRITE YOUR INSTRUCTIONS',
                      border: OutlineInputBorder( )
                    ),
                  ).py12(),
                  'Name of Receiver'.text.size(20).make(),
                 
                  TextFormField().pOnly(bottom: 20),
                   'Phone Number of Receiver'.text.size(20).make(),
                   IntlPhoneField(
                  decoration: const InputDecoration(
                  labelText: 'Phone Number',
              ),
    initialCountryCode: 'CA',
    onChanged: (phone) {
    },
),
                  Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.black,
                    child: 'Confirm Booking'.text.white.size(20).bold.make().centered(),
                  )
                  
                ])))               
        ]
      )
      )

      );
  }


Row custom_qty() {
    return Row(children: [
                    const Text('Qty : '),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                    child:   Center(
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              hintText: '0',
                              // border: OutlineInputBorder()
                            ),
                          ),
                    ),
                    
                    )
                  ],);
  }

  Row Custom_radio(String title,int val) {
    return Row(
      children: [
                    Text(title).text.size(18).bold.make(),
                    Obx(()=>Radio(
                      value: val,
                       groupValue: controller.selectval.value, 
                       onChanged:(value) {
                         controller.updatevalue(value!);
                       }
                      ),
                    )
                  ],);
  }
  Container custom_cursol(String img) {
    return Container(
                    height: 200,
                    width: 330,
                    // decoration: const BoxDecoration(
                    //   // color: Colors.blueAccent,
                    //   // borderRadius:BorderRadius.all(Radius.circular(20)),
                    //   // image: DecorationImage(image: AssetImage(img),fit: BoxFit.fitWidth)
                    //   ),
                      child: Image.asset(img,fit: BoxFit.fitWidth,),
                      );
  }

Column Custom_Icon(String title, String img, var tap) {
    return Column(
                    children: [
                      InkWell(
                        onTap: tap,
                        child: Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            // color: Colors.grey[300]
                                 gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.centerLeft,
                                  colors: [
            Colors.blue,
            Vx.green800,
            Vx.blue700
          ]),
                          ),
                          child: Image.asset(img,cacheHeight: 45,),
                        ).pOnly(bottom: 10),
                      ),
                      Text(title,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)
                    ],
                  );
  }
}