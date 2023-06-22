// ignore_for_file: camel_case_types

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Credit_Debit_screen extends StatefulWidget {
  const Credit_Debit_screen({super.key});

  @override
  State<Credit_Debit_screen> createState() => _Credit_Debit_screenState();
}

class _Credit_Debit_screenState extends State<Credit_Debit_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('VISA').text.blue900.size(50).bold.make().centered().pOnly(top: 100,bottom: 30),
             Row(children: [
              const Text('card number').text.uppercase.bold.make().pOnly(right: 210),
              
              const Text('cvc').text.uppercase.bold.make(),
             ],).py16(),
              Row(
                children: [
                    Flexible(
                      flex: 3,
                      child: TextFormField(
                        scrollPadding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: InputDecoration(
                            hintText: '7245 3574 2345 7346',
                                   filled: true,
                                      fillColor: const Color(0xFFE4E9E4),
                                     border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: BorderSide.none
                                      ),
                          ),
                        
                      ).pOnly(right: 20),
                    ),
                      Flexible(
                      child: SizedBox(
                        width: 70,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: '724',
                                   filled: true,
                                      fillColor: const Color(0xFFE4E9E4),
                                     border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: BorderSide.none
                                      ),
                          ),
                        ),
                      ).px12(),
                    )
                  
                ],
              ),
              const Text('card holder name').text.uppercase.bold.make().py16(),
               TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Joshna Humable',
                                   filled: true,
                                      fillColor: const Color(0xFFE4E9E4),
                                     border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: BorderSide.none
                                      ),
                          ),
                        ),
                        
              const Text('experition date').text.uppercase.bold.make().py16(),
              Row(
                children: [
                    // Text('CARD NUMBER').text.size(20).make(),
                    Flexible(
                      flex: 2,
                      child:DropDownTextField(
                      textFieldDecoration: InputDecoration(
                          hintText: "20",                          
                      // hintStyle: TextStyle(fontSize: 20),
                           filled: true,
                                      fillColor: const Color(0xFFE4E9E4),
                                     border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: BorderSide.none,
                    ),),
                      dropDownList: const [
                        DropDownValueModel(name: '1', value: '1'),
                        DropDownValueModel(name: '2', value: '2'),
                        DropDownValueModel(name: '3', value: '3'),
                        DropDownValueModel(name: '4', value: '4'),
                        DropDownValueModel(name: '5', value: '5'),
                        DropDownValueModel(name: '6', value: '6'),
                        DropDownValueModel(name: '7', value: '7'),
                        DropDownValueModel(name: '8', value: '8'),
                        DropDownValueModel(name: '9', value: '9'), 
                        DropDownValueModel(name: '10', value: '10'),
                        DropDownValueModel(name: '11', value: '11'),
                        DropDownValueModel(name: '12', value: '12'),
                        
                        DropDownValueModel(name: '13', value: '13'),
                        DropDownValueModel(name: '14', value: '14'),
                        DropDownValueModel(name: '15', value: '15'),
                        DropDownValueModel(name: '16', value: '16'),
                        DropDownValueModel(name: '17', value: '17'),
                        DropDownValueModel(name: '18', value: '18'),
                        DropDownValueModel(name: '19', value: '19'),
                        DropDownValueModel(name: '20', value: '20'),
                        DropDownValueModel(name: '21', value: '21'), 
                        DropDownValueModel(name: '22', value: '22'),
                        DropDownValueModel(name: '23', value: '23'),
                        DropDownValueModel(name: '24', value: '24'),
                        
                        DropDownValueModel(name: '25', value: '25'),
                        DropDownValueModel(name: '26', value: '26'),
                        DropDownValueModel(name: '27', value: '27'), 
                        DropDownValueModel(name: '28', value: '28'),
                        DropDownValueModel(name: '29', value: '29'),
                        DropDownValueModel(name: '30', value: '30'),
                      ]), 
                    ),
                      Flexible(
                        flex: 3,
                      child: DropDownTextField(
                      textFieldDecoration: InputDecoration(
                        hintText: "February",                          
                      // hintStyle: TextStyle(fontSize: 20),
                         filled: true,
                                    fillColor: const Color(0xFFE4E9E4),
                                   border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                      borderSide: BorderSide.none,
                    ),),
                      dropDownList: const [
                      DropDownValueModel(name: 'January', value: '1'),
                      DropDownValueModel(name: 'February', value: '2'),
                      DropDownValueModel(name: 'March', value: '3'),
                      DropDownValueModel(name: 'April', value: '4'),
                      DropDownValueModel(name: 'May', value: '5'),
                      DropDownValueModel(name: 'Jun', value: '6'),
                      DropDownValueModel(name: 'July', value: '7'),
                      DropDownValueModel(name: 'August', value: '8'),
                      DropDownValueModel(name: 'September', value: '9'), 
                      DropDownValueModel(name: 'October', value: '10'),
                      DropDownValueModel(name: 'November', value: '11'),
                      DropDownValueModel(name: 'December', value: '12'),
                      ]).px12(),
                    ),
                      Flexible(
                        flex: 2,
                      child: DropDownTextField(
                      textFieldDecoration: InputDecoration(
                        hintText: "2018",                          
                      // hintStyle: TextStyle(fontSize: 20),
                         filled: true,
                                    fillColor: const Color(0xFFE4E9E4),
                                   border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                      borderSide: BorderSide.none,
                    ),),
                      dropDownList: const [
                      DropDownValueModel(name: '2023', value: '1'),
                      DropDownValueModel(name: '2022', value: '2'),
                      DropDownValueModel(name: '2021', value: '3'),
                      DropDownValueModel(name: '2020', value: '4'),
                      DropDownValueModel(name: '2019', value: '5'),
                      DropDownValueModel(name: '2018', value: '6'),
                      DropDownValueModel(name: '2017', value: '7'),
                      DropDownValueModel(name: '2016', value: '8'),
                      DropDownValueModel(name: '2015', value: '9'), 
                      DropDownValueModel(name: '2014', value: '10'),
                      DropDownValueModel(name: '2013', value: '11'),
                      DropDownValueModel(name: '2012', value: '12'),
                      ]),
                    ),
                  
                ],
              ),

              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Vx.blue900
                ),
                child: const Text('complete order(total \$200)').text.size(18).white.bold.uppercase.make().centered(),
              ).py32()
            ],
          ),
        ),
      ),
    );
  }
}