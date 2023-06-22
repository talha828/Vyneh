

// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  CustomTextFieldWidget(
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
      margin: const EdgeInsets.only(bottom: 20,),

      child: Padding(
        padding: const EdgeInsets.only(),
        child: TextFormField(

          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: textController,
          style:
              const TextStyle(color: Colors.white, fontSize: 18),
          cursorColor: const Color(0xff979797),
          obscureText: obscure,
          decoration: InputDecoration(
            filled: true,
          fillColor: const Color(0xff767874),
            hintText: hintText,
            hintStyle:const TextStyle(
              fontFamily: 'Poppins', fontSize: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40)
            ),
            contentPadding: const EdgeInsets.only(
                right: 20, top: 5, bottom: 5, left: 40),
            prefixIcon: icon,
            // errorBorder: InputBorder.none,
            errorStyle: const TextStyle(color: Colors.blue,),
          ),
          textInputAction: TextInputAction.next,
          validator: validator,
        ),
      ),
    );
  }
}
