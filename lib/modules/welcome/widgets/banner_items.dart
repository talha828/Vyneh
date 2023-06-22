// import 'package:flutter/material.dart';
//
// import '../models/appBanner.dart';
//
//
// class BannerItem extends StatelessWidget {
//   final AppBanner appBanner;
//    BannerItem({
//     Key? key,  required this.appBanner,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage(appBanner.thumbnailUr),
//           fit: BoxFit.cover
//         )
//       ),
//       margin: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: DefaultTextStyle(
//         style:const TextStyle(color: Colors.white,fontSize: 20.0,fontFamily: 'Poppins'),
//         child: Stack(
//           children: [
//             Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                 Container(
//                   width: 400,
//                 child: Text(AppBanner.title,
//                 style: const TextStyle(fontFamily: 'Poppins'),
//                 textAlign: TextAlign.center,),
//                 )
//               ]),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }