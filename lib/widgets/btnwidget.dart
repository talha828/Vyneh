// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
class BtnWidget extends StatelessWidget {
  BtnWidget({
    required this.title,
    required this.btnTxtClr,
    required this.btnBgClr,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  String title;
  Color btnTxtClr;
  Color btnBgClr;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 45,
      // width: 435,
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  // side: BorderSide(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(30)),
              primary: btnBgClr),
          child: Text(
            title,
            style: TextStyle(
                fontFamily: 'Poppins', color: btnTxtClr, fontSize: 21.5),
          )),
    );
  }
}