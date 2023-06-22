// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ListingFeilds extends StatelessWidget {
  const ListingFeilds(
      {Key? key,
      required this.textController,
      required this.hintText,
      required this.prefixIcon,
      // required this.validator,
      required this.obscure, this.onpress})
      : super(key: key);

    final TextEditingController textController;
    final String hintText;
    final  prefixIcon;
    final bool obscure;
    final VoidCallback? onpress;
    // String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        // autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: textController,
        style:
            const TextStyle(color: Colors.white, fontSize: 16, fontFamily:'Poppins' ),
        cursorColor: const Color(0xff979797),
        obscureText: obscure,
        decoration: InputDecoration(
           filled: true,
          fillColor: const Color(0xff424242),
          hintText: hintText,
          hintStyle:const TextStyle(
            color: Color(0xFFBBBDBA),
            fontFamily: 'Poppins', fontSize: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),

          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          prefixIcon: prefixIcon,
          // errorBorder: InputBorder.none,
          // errorStyle: const TextStyle( height: 0.2),
        ),
        textInputAction: TextInputAction.next,
        validator: (String? value){
          if(value == null || value.isEmpty){
            return "Please Fill this Field";
          }
          return null;
        },
      ),
    );
  }
}
