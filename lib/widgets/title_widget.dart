// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';


class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key, this.title,
  }) : super(key: key);
final title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
      Text('$title',style: const TextStyle(
        color: Colors.black,
        fontFamily:'Poppins',
      fontSize: 40, ),)
    ],);
  }
}
