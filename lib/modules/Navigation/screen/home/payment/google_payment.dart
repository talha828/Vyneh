// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Google_Payment_Screen extends StatefulWidget {
  const Google_Payment_Screen({super.key});

  @override
  State<Google_Payment_Screen> createState() => _Google_Payment_ScreenState();
}

class _Google_Payment_ScreenState extends State<Google_Payment_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const Text('Add credit or debit card').text.size(25).make().pOnly(top: 45,bottom: 100),
            TextFormField(
              decoration: InputDecoration(
                label: const Text('Card number').text.size(20).make(),
              ),
            ).py32(),
            Row(
              children: [
                
                SizedBox(
                  width: 50,
                    child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text('MM')
                    ),
                  ),
                ).pOnly(right: 15),
                const Text('/'),
              
                SizedBox(
                  width: 50,
                    child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text('YY')
                    ),
                  ),
                ).pOnly(right: 15),
                 SizedBox(
                  width: 50,
                    child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text('CVC')
                    
                                 )),
                 )
              ],
            ),
              TextFormField(
              decoration: InputDecoration(
                label: const Text('Cardholder name').text.size(18).make(),
              ),
            ).py32(),
               TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.location_on),
                label: const Text('Billing address').text.size(18).make(),
              ),
            ).py32(),
            const Text('By continuing you agree to the Google Payments Terms of Service. The Privacy Notice describes how your data  is handled').text.size(16).make(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(onPressed: (){}, child: const Text('Cancel').px16()),
                ElevatedButton(onPressed: (){}, child: const Text('Save').px16()).px16()
              ],
            ).py20()
          ],),
        ),
      ),
    );
  }
}