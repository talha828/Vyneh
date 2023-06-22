// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';


class ListingTitle extends StatelessWidget {
  const ListingTitle({
    Key? key, this.title,
  }) : super(key: key);
final title;
  @override
  Widget build(BuildContext context) {
    return Text('$title',style: const TextStyle(
      color: Colors.white,
      fontFamily:'Poppins',
       
    fontSize: 30, ),);
  }
}
class ListingDescription extends StatelessWidget {
  const ListingDescription({
    Key? key, this.desc,
  }) : super(key: key);
final desc;
  @override
  Widget build(BuildContext context) {
    return Text('$desc',style: const TextStyle(
      color: Colors.white,
      // color: Color(0xffBDBDBD),
      fontFamily:'Poppins',
    fontSize: 16, ),
    textAlign: TextAlign.center,
    );
  }
}