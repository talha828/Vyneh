import 'package:flutter/material.dart';

class Indications extends StatelessWidget {
  final bool isActive;
  final String title;
  const Indications({
    Key? key, required this.isActive, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        width:isActive?200.0: 10.0,
        height: isActive?50.0:10.0,
        decoration: BoxDecoration(
          // ignore: prefer_const_constructors
          color: isActive? Color(0xff424242):Colors.grey,
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(color: Colors.white)
        ),
        child: Center(
          child: Row(
            children: [
              Text(title,style:    const TextStyle(
                    fontFamily: 'Poppins',
                      color: Colors.white, fontSize: 18),),
            ],
          ),
        ),
      ),
    );
  }
}
