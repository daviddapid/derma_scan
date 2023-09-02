import 'package:flutter/material.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController {
  final ImagePicker _picker = ImagePicker();
  RxString _imgPath = "".obs;
  RxList? _predictions = [].obs;
  // late Interpreter _interpreter;

  @override
  void onInit() async {
    super.onInit();
    var response = await Tflite.loadModel(
      model: 'assets/tf_models/model_unquant.tflite',
      labels: 'assets/tf_models/labels.txt',
      isAsset: true,
      numThreads: 1,
    );
    print(response);
  }

  @override
  void dispose() async {
    super.dispose();
    await Tflite.close();
  }

  // tensorflow function
  void predict() async {
    var predictions = await Tflite.runModelOnImage(path: getImgPath());
    if (predictions != null) {
      _predictions?.value = predictions;
    }
    print(_predictions);
  }

  List? getAllPredictions() => _predictions?.value;

  // image picker & cropper function
  bool imgIsExist() => _imgPath != "" ? true : false;

  String getImgPath() => _imgPath.value;

  Future<void> pickImage(ImageSource imgSource) async {
    final XFile? selectedImg = await _picker.pickImage(source: imgSource);

    if (selectedImg != null) {
      await _cropImg(selectedImg.path);

      //close bottomsheet
      Get.back();
    } else {
      Get.back();
      Get.snackbar(
        "Error",
        "Pleas select your image or photo",
        icon: const Icon(Icons.error_rounded),
      );
    }
  }

  Future<void> _cropImg(String imgPath) async {
    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: imgPath,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9
      ],
      //tampilan crop
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.orange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Cropper',
        ),
      ],
    );
    if (croppedFile != null) {
      _imgPath.value = imgPath;
    } else {
      Get.snackbar("Error", "crop img");
    }
  }
}
