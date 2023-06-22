import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class Edit_Profile_Screen extends StatefulWidget {
  const Edit_Profile_Screen({super.key});

  @override
  State<Edit_Profile_Screen> createState() => _Edit_Profile_ScreenState();
}

class _Edit_Profile_ScreenState extends State<Edit_Profile_Screen> {
  ImagePicker _imagePicker = ImagePicker();
  XFile? file;

  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: "Profile".text.color(Colors.black).make(),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading:IconButton(onPressed: (){Get.back();}, icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),)
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          InkWell(
            onTap: () {
              Get.defaultDialog(
                  title: "Pick Image",
                  content: Column(
                    children: [
                     
                        TextButton(
                            onPressed: () {
                              controller.getImage();
                            },
                            child: Text("Upload Image from Gallery")),
                      
                       TextButton(
                            onPressed: () {
                              controller.CaptureImage();
                            },
                            child: Text("Capture Image from Camera"))
                    
                    ],
                  ));
            },
            child:CircleAvatar(
              radius: 40,
              backgroundImage: controller.imagepath.isNotEmpty
                  ? FileImage(File(file!.name))
                  : null,
            ),
          ),
          "James Franco".text.size(18).bold.make().pOnly(bottom: 30,top: 20),
          "@jamshoro".text.color(Colors.grey).make().pOnly(bottom: 40),
          Column(
            children: [
              Custom_Filed("First Name",'Kamlesh'),
              Divider(),
              Custom_Filed("Last Name",'Kumar'),
              Divider(),
               Custom_Filed("Email",'Kamlesh@gmail.com'),
              Divider(),
               Custom_Filed("Mobile Number",'+92302003515'),
              Divider(),
               Custom_Filed("BirthDate",'12-04-1999'),
              Divider()
            ],
          ).pOnly(left: 10, right: 10, top: 60, bottom: 60),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.indigo),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
                  minimumSize:
                      MaterialStateProperty.all(Size(double.infinity, 50))),
              onPressed: () {},
              child: Text("Done").text.bold.make())
        ]).pSymmetric(h: 15),
      ),
    );
  }

  Row Custom_Filed(String title, String hint) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(title).text.bold.size(18).make(),
              Container(
                width: 180,
                child: 
              TextField(
                decoration: InputDecoration(hintText: hint,
                border: InputBorder.none
                ),
              ),
              )
            ],);
  }
}

class textfield extends StatelessWidget {
  textfield({Key? key, required this.hinttext, required this.title})
      : super(key: key);

  String title;
  String hinttext;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        TextField(
          decoration: InputDecoration(hintText: hinttext),
        )
      ],
    );
  }
}

class ImagePickerController extends GetxController {
  RxString imagepath = ''.obs;

  Future getImage() async {
    final ImagePicker _imagepicker = ImagePicker();
    final image = await _imagepicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imagepath.value = image.path.toString();
    }
  }

  Future CaptureImage() async {
    final ImagePicker _imagepicker = ImagePicker();
    final image = await _imagepicker.pickImage(source: ImageSource.camera);
    if (image != null) {
      imagepath.value = image.path.toString();
    }
  }
}
