import 'package:flutter/material.dart';

class Alertbox{
    void showMyDialog(BuildContext context)async{
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: const Text('Your privacy is important for us', style: TextStyle(fontWeight: FontWeight.bold),),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  RichText(
                      text: const TextSpan(
                        text: "BlaBlaCar and ", style: TextStyle(color: Colors.black, fontSize: 16),
                        children: [
                          TextSpan(text: "its partners ",
                              style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline, fontSize: 16)),
                          TextSpan(text: "use cookies (or similar technology) to measure and analyse how our platform is "
                              "used, and to show ads based on your interests. By clicking 'Accept and Continue', you agree "
                              "to the above. you can change your preference at any time in the cookies setting. Note that blocking "
                              "some types of cookies may impact your experience using BlaBlaCar and certain features we offer.\n"
                              "For more info, please check our ", style: TextStyle(color: Colors.black, fontSize: 15)),
                          TextSpan(text: "Cookies Policy", style: TextStyle(color: Colors.blue,fontSize: 16, decoration: TextDecoration.underline)),

                        ]
                      )
                  )
                ],
              ),
            ),
            actions: <Widget>[
              const Center(
                child: Text( "CUSTOMIZE COOKIES SETTING", style: TextStyle(fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline, fontSize: 16),),
              ),
              const SizedBox(height: 20,),
              RoundButton(text: const Text('Reject All', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
               onpress: () {
                Navigator.pop(context);
              },),
              const SizedBox(height: 10,),
              RoundButton(text: const Text('ACCEPT AND CONTINUE', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                onpress: () {
                Navigator.pop(context);
              },),


            ],
          );
        },
      );
    }
}

class RoundButton extends StatefulWidget {
  const RoundButton({Key? key,
    required this.text,
    this.color = Colors.blue,
    required this.onpress}) : super(key: key);

  final Text text;
  final Color color;
  final VoidCallback onpress;
  @override
  State<RoundButton> createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onpress,
      child: Container(
        height: 40,
         width: double.infinity,
         decoration: BoxDecoration(
           color: widget.color,
           borderRadius: BorderRadius.circular(40),
         ),
        child: Center(child: widget.text ),
      ),
    );
  }
}
