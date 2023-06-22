// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class GetImage extends GetxController{
  //Image Picker 
RxString imagePath = ''.obs;

Future getImage()async{
  final ImagePicker picker = ImagePicker();
  final image = await picker.pickImage(source: ImageSource.camera);

  if (image != null) {
    imagePath.value = image.path;
  }
}

var selectval = 0.obs;

void updatevalue(int val){
  selectval.value = val;
}

var checksignatures = false.obs;
var checktracking = false.obs;
}