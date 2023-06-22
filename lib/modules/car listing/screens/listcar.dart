// ignore_for_file: unused_field, unused_element, use_full_hex_values_for_flutter_colors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kaar_app/modules/Navigation/screens/navigationscreen.dart';
import 'package:kaar_app/modules/car%20listing/screens/successful_listing.dart';
import 'package:kaar_app/modules/car%20listing/widgets/listingfields.dart';
import 'package:kaar_app/widgets/btnwidget.dart';
import '../../welcome/models/appBanner.dart';

class ListCar extends StatefulWidget {
   final String text;

  const ListCar({super.key, required this.text, });

  @override
  State<ListCar> createState() => _ListCarState();
}

class _ListCarState extends State<ListCar> {
    
    TextEditingController carnameController = TextEditingController();
    TextEditingController fuelController = TextEditingController();
    TextEditingController carmodelController = TextEditingController();
    TextEditingController policyController = TextEditingController();
    TextEditingController expiryDateController = TextEditingController();

    final _formKey = GlobalKey<FormState>();
    DateTime _dateTime = DateTime.now();

    void _showDatePicker(){
      showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2050)
      ).then((value){
        setState(() {
          _dateTime = value!;
        });
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff333333),
    appBar: AppBar(
      centerTitle: true,
      title:  const Text(
        'Add New Car',
        style: TextStyle(fontFamily: 'Poppins'),
      ),
      backgroundColor:  Colors.black,
      leading: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const SearchScreen()));
        },
          child: const Icon(Icons.arrow_back),

      ),
    ),

    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            //Carousel sliding
            CarouselSlider.builder(
              itemCount: AppBanner.thumbnailUrl.length,
              itemBuilder: (context, index, realIndex) {
                var imageUrls = AppBanner.thumbnailUrl[index];
                return buildImage(imageUrls, index);
              },
              options: CarouselOptions(
                // height: MediaQuery.of(context).size.height *1/4,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                  }),
            ),

            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,),
               //Fields
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    ListingFeilds(
                        textController: carnameController,
                        hintText: 'Honda Civic',
                        prefixIcon: const Icon(Icons.car_rental, color: Color(0xFFBBBDBA),),
                        obscure: false),

                    ListingFeilds(textController: fuelController,
                        hintText: 'Diesel Fuel',
                        prefixIcon: const Icon(Icons.local_gas_station, color: Color(0xFFBBBDBA),),
                        obscure: false),

                    ListingFeilds(textController: carmodelController,
                        hintText: 'Gj-3432-45',
                        prefixIcon: const Icon(Icons.drive_eta, color: Color(0xFFBBBDBA),),
                        obscure: false),

                    ListingFeilds(textController: policyController,
                        hintText: 'Insurance Policy',
                        prefixIcon: const Icon(Icons.health_and_safety, color: Color(0xFFBBBDBA),),
                        obscure: false),

                    ListingFeilds(
                        textController: expiryDateController,
                        hintText: 'Expiry Date',
                        prefixIcon: InkWell(
                          onTap: (){},
                            child: const Icon(Icons.calendar_month_outlined, color: Color(0xFFBBBDBA),)),
                            obscure: false,),


                    const SizedBox(height:15 ,),
                    BtnWidget(
                        title: 'Continue',
                        btnTxtClr: Colors.white,
                        btnBgClr: Colors.blue,
                        onTap: (){
                         if(_formKey.currentState!.validate()){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>const SuccessfullListing()));
                         }
                        }
                        )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
  }
          // Image build widget
    Widget buildImage(String imageUrls, int index) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 210,
              decoration: BoxDecoration(border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(15.0,),
                  image: DecorationImage(
                    image: AssetImage(AppBanner.thumbnailUrl[index], ),
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
                    fit: BoxFit.cover,
                  )
              ),

            ),
          ],
        ),
      );
    }
}


