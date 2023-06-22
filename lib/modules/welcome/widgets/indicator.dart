// import 'package:flutter/material.dart';
//
//
// class Indicator extends StatelessWidget {
//   final bool isActive;
//   const Indicator({
//     Key? key, required this.isActive,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top:8.0),
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 250),
//         margin: const EdgeInsets.symmetric(horizontal: 4.0),
//         width:isActive?10.0: 10.0,
//         height: 10.0,
//         decoration: BoxDecoration(
//           color: isActive? Colors.amber:Colors.grey,
//           borderRadius: BorderRadius.circular(10.0),
//           border: Border.all(color: Colors.white)
//         ),
//       ),
//     );
//   }
// }
