import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaar_app/modules/welcome/screens/tourscreen.dart';
import 'package:slider_captcha/slider_capchar.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  final SliderController controller = SliderController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async=>false,
      child: Scaffold(
        backgroundColor: const Color(0xFFF0F6EF),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Car", style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 30),),
                const SizedBox(height: 20,),
                const Align(
                    alignment: Alignment.center,
                    child: Text("We want to make sure it is actually you we are dealing with and not a Robot", style: TextStyle(
                        fontSize: 20, color: Colors.black
                    ),)),
                const SizedBox(height: 20,),
                //Captcha puzzle
                Captcha(controller: controller),
    
                const SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.only(left: 5, ),
                  color: const Color(0xFFE4E9E4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Why is this verification required? Something about the behaviour of the browser has caught "
                          "our attention.", style: TextStyle(fontSize: 18, color: Colors.black)),
                      const Text("There are various possible explanation for this:",
                          style: TextStyle(fontSize: 18, color: Colors.black)),
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: const [
                            Text("- you are browsing and clicking at a speed much  faster than expected of a  human being",
                                style: TextStyle(fontSize: 18, color: Colors.black)),
                            Text("- something is preventing javascript from working on  your computer.",
                                style: TextStyle(fontSize: 18, color: Colors.black)),
                            Text("- there is a robot on the same network (IP  119.192.250.193) as you ",
                              style: TextStyle(fontSize: 18, color: Colors.black,),),
                          ],
                        ),
                      ),
                          Row(
                            children: const [
                              Text("Having problem accessing the site? ",
                                  style: TextStyle(fontSize: 16, color: Colors.black,)),
                              Text("Contact Support", style: TextStyle(fontSize: 16, color: Colors.black,
                              decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}

class Captcha extends StatelessWidget {
  const Captcha({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SliderController controller;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFD9DCD8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SliderCaptcha(
          controller: controller,
          image: Image.asset('assets/car.jpg'),
          colorBar: Colors.grey,
          colorCaptChar: Colors.blue,
          space: 30,
          fixHeightParent: false,
          onConfirm: (value) async {
            debugPrint(value.toString());
            if(value == true){
              return await Future.delayed(const Duration(seconds: 1)).then((value){
                controller.create.call();
                Get.to(()=> const TourScreen());

              });
            }
          },

        ),
      ),
    );
  }
}
