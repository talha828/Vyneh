// ignore_for_file: file_names, camel_case_types, unrelated_type_equality_checks, non_constant_identifier_names, must_be_immutable, prefer_typing_uninitialized_variables

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaar_app/modules/Navigation/screen/profile_screen/get_Image_fun.dart';
import 'package:velocity_x/velocity_x.dart';

class Vehicle_Registration_Screen extends StatefulWidget {
  const Vehicle_Registration_Screen({super.key});

  @override
  State<Vehicle_Registration_Screen> createState() =>
      _Vehicle_Registration_ScreenState();
}

class _Vehicle_Registration_ScreenState
    extends State<Vehicle_Registration_Screen> {

      
  DateTime _dateTime = DateTime.now();
  //Date Picker Function
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
  final TextEditingController _name = TextEditingController();
  final TextEditingController _model = TextEditingController();
  final TextEditingController _platenumber = TextEditingController();
  final TextEditingController _incompany = TextEditingController();
  final TextEditingController _expirdate = TextEditingController();
  final TextEditingController _polcyholder = TextEditingController();

  GetImage image = Get.put(GetImage());

  int? groupValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 24, 24),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text('Vehicle registration'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             image.imagePath.isEmpty
                  ? Container(
                      height: 180,
                      width: 320,
                      color: Colors.blue,
                      child: Image.asset(
                        'assets/registration.jpg',
                        fit: BoxFit.cover,
                      ),
                    ).centered().py(10)
                  : SizedBox(
                      height: 180,
                      width: 320,
                      // color: Colors.blue,
                      child: Image.file(
                        File(image.imagePath.toString()),
                        fit: BoxFit.cover,
                      ),
                    ).centered().py(10),
            
            ElevatedButton.icon(onPressed: (){
                 image.getImage();
            },icon: const Icon(Icons.upload,color: Colors.black87,),style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white70)), 
            label: const Text('Upload Image').text.color(Colors.black87).make()).centered().pOnly(bottom: 8),
            CustomTextField(
              hintText: 'Make',
              icon: const Icon(Icons.car_rental),
              obscure: false,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Please enter car name';
                }
                return null;
              },
              textController: _name,
            ),
            CustomTextField(
              hintText: 'Model',
              icon: const Icon(Icons.model_training),
              obscure: false,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Please enter Model';
                }
                return null;
              },
              textController: _model,
            ),
            CustomTextField(
              hintText: 'Plate Number',
              icon: const Icon(Icons.numbers),
              obscure: false,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Please enter car number';
                }
                return null;
              },
              textController: _platenumber,
            ),
                CustomTextField(
              hintText: 'Insurance Company',
              icon: const Icon(Icons.compare),
              obscure: false,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Please Fill Fileds';
                }
                return null;
              },
              textController: _incompany,
            ),
               CustomTextField(
              hintText: 'Policy Number',
              icon: const Icon(Icons.local_police),
              obscure: false,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Please Fill Fileds';
                }
                return null;
              },
              textController: _polcyholder,
            ),
               CustomTextField(
              hintText: '${_dateTime.day}-${_dateTime.month}-${_dateTime.year}',
              icon: IconButton(onPressed: (){
                                           _showDatePicker();
                  setState(() {
                    _expirdate.text.toString() == _dateTime.day-_dateTime.month-_dateTime.year;
                  });
                }, icon:const Icon(Icons.calendar_month_rounded)),
              obscure: false,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Please Fill Fileds';
                }
                return null;
              },
              textController: _expirdate,
            ),
               CustomTextField(
              hintText: 'Policy Holder',
              icon: const Icon(Icons.policy),
              obscure: false,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Please Fill Fileds';
                }
                return null;
              },
              textController: _polcyholder,
            ),
            const Text('Body Style').text.white.size(18).bold.make(),
            Column(children: [
   Row(
              children: [
                Custom_radio('Sedan', 1),
                Custom_radio('Coupe', 2),
                Custom_radio('MiniVan/Van', 3),
                ],
            ),
               Row(
              children: [
                Custom_radio('Truck', 4),
                Custom_radio('SUV', 5),
                
                Custom_radio('Motorcycle', 6)
                ],
            ),
            ],),
            InkWell(
              onTap: () {
                // image.getImage();
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70),
                child:
                    const Text('Continue').text.bold.size(18).make().centered(),
              ).py16().px16(),
            ),
          ],
        ),
      )),
    );
  }

  Row Custom_radio(String title, int val) {
    return Row(
      children: [
        Radio(
            fillColor: MaterialStateColor.resolveWith(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return Colors.blue;
                }
                return Colors.white;
              },
            ),
            value: val,
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value;
              });
            }),
            
        Text(title).text.white.size(13).make(),
      ],
    );
  }
}

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      required this.textController,
      required this.hintText,
      required this.icon,
      required this.validator,
      required this.obscure})
      : super(key: key);

  final TextEditingController textController;
  final String hintText;
  final icon;
  final bool obscure;
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Padding(
        padding: const EdgeInsets.only(),
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: textController,
          style: const TextStyle(color: Colors.white, fontSize: 18),
          cursorColor: const Color(0xff979797),
          obscureText: obscure,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white70,
            hintText: hintText,
            hintStyle: const TextStyle(fontFamily: 'Poppins', fontSize: 20),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
            contentPadding:
                const EdgeInsets.only(right: 20, top: 5, bottom: 5, left: 40),
            prefixIcon: icon,
            // errorBorder: InputBorder.none,
            errorStyle: const TextStyle(
              color: Colors.blue,
            ),
          ),
          textInputAction: TextInputAction.next,
          validator: validator,
        ),
      ),
    );
  }
}
