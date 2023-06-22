// ignore_for_file: sized_box_for_whitespace
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaar_app/modules/welcome/models/appBanner.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

import 'security_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var activeindex = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async=>false,
      child: Scaffold(
        appBar: AppBar(elevation: 0,backgroundColor: Colors.transparent,),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            "Search for the best avalible taxi"
                .text
                .size(20)
                .make()
                .centered()
                .pOnly(top: 50, bottom: 20),
            "pleasent talus meuris, tencident nec ipsum id, faucibus pellentasque leo. Nunc congue ac tellus quis porttitor"
                .text
                .size(16)
                .lineHeight(1.5)
                .align(TextAlign.center)
                .color(Colors.black54)
                .make()
                .pOnly(bottom: 50),
            carousel_slider().pOnly(bottom: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(10),
                //       color: Colors.white,
                //       boxShadow: [BoxShadow(blurRadius: 0.2)]),
                //   child: Icon(Icons.arrow_back).centered().p(5),
                // ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(50)),
                  child: "Next".text.color(Colors.white).make().px(30).py(10),
                ).onTap(() { Get.to(() =>const SecurityScreen());})
              ],
            ).pSymmetric(h: 20)
          ]),
    ),
    );

      
      // Scaffold(
  //       backgroundColor: Colors.black,
  //       body: Padding(
  //         padding: const EdgeInsets.only(top: 130),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           crossAxisAlignment: CrossAxisAlignment.center,
  //           children: [
  //             Center(
  //               child: CarouselSlider.builder(
  //                 itemCount: AppBanner.thumbnailUrl.length,
  //                 itemBuilder: (context, index, realIndex) {
  //                   var imageUrls = AppBanner.thumbnailUrl[index];
  //                   return buildImage(imageUrls, index);
  //                 },
  //                 options: CarouselOptions(
  //                     autoPlay: true,
  //                     autoPlayAnimationDuration: const Duration(seconds: 2),
  //                     viewportFraction: 1,
  //                     onPageChanged: (index, reason) {
  //                       setState(() => _current = index);
  //                     }),
  //               ),
  //             ),
  //             const SizedBox(height: 70,),
  //             // Indicator
  //             Padding(
  //               padding: const EdgeInsets.only(top: 100),
  //               child: buildIndicator(),
  //             ),
  //               //Button
  //             Padding(
  //               padding: const EdgeInsets.only(top: 50),
  //               child: SplashButton(
  //                   title: 'Continue',
  //                   btnTxtClr: Colors.white, btnBgClr: Colors.blue, onTap: (){
  //                 Get.to(() =>const SecurityScreen());
  //               }),
  //             )
  //           ],
  //         ),
  //       ),

  //     ),
  //   );
  // }
  // Widget buildImage(String imageUrls, int index) {
  //   return  Container(
  //     height: 250,
  //     width: 350,
  //     child: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         children: [
  //           Container(
  //             height: 180,
  //             width: 350,
  //             decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(20),
  //               image: DecorationImage(
  //                 image: AssetImage(AppBanner.thumbnailUrl[index]),
  //                 fit: BoxFit.cover
  //               )
  //             ),
  //           ),
  //           const SizedBox(height: 15),
  //           Text(AppBanner.title[index],
  //              style: const TextStyle(color: Colors.white,fontSize: 12.0,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
  //             textAlign: TextAlign.center,),
  //         ],
  //       ),
  //     ),
  //   );

  // }

  // Widget buildIndicator() =>
  //     AnimatedSmoothIndicator(activeIndex: _current, count: 3,
  //     effect: const WormEffect(dotWidth: 10,dotHeight: 10),);
}

Column carousel_slider(){
  return Column(
      children: [
        Center(
          child: CarouselSlider.builder(
              itemCount: AppBanner.thumbnailUrl.length,
              itemBuilder: (context, index, realIndex) {
                final imageUrls = AppBanner.thumbnailUrl[index];
                return buildImage(imageUrls, index);
              },
              options: CarouselOptions(
                  // height: MediaQuery.of(context).size.height * 1 / 2,
                  height: MediaQuery.of(context).size.height/2,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  onPageChanged: (index, reason) {
                    setState(() => activeindex = index);
                  })).pOnly(bottom: 20),
        ),
        buildIndicator()
      ],
    );
  }
 Widget buildImage(String imageUrls, int index) {
    return Container(
      // width: 400,
      width: MediaQuery.of(context).size.width/1.3 ,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          imageUrls,
          fit: BoxFit.cover,
        ),
      ),
    );
}
  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeindex,
        count: AppBanner.thumbnailUrl.length,
        effect: WormEffect(
            dotHeight: 5,
            dotWidth: 20,
            dotColor: Color.fromARGB(255, 243, 206, 152),
            activeDotColor: Colors.orange),
      );
}