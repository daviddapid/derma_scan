import 'dart:io';

import 'package:derma_scan/image_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final ImageController _imageController = Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Derma Scan', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.lightBlue.shade300,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 35),
        child: Column(
          children: [
            InkWell(
              onTap: () async {
                Get.bottomSheet(
                  BottomSheetImagePicker(),
                );
              },
              child: Obx(
                () => Container(
                  padding: EdgeInsets.all(3),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: double.infinity,
                  height: 200,
                  child: _imageController.imgIsExist()
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.file(
                            File(_imageController.getImgPath()),
                            fit: BoxFit.cover,
                          ),
                        )
                      : Icon(Icons.upload_rounded),
                ),
              ),
            ),
            SizedBox(height: 15),
            // -----------
            // SCAN BUTTON
            // -----------
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                ),
                child: Text("Scan"),
              ),
            ),

            // PageView(
            //   scrollDirection: Axis.vertical,
            //   children: [
            //     Text(
            //         'lorem ipsum dolor sit amet lorem lorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet lorem lorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet lorem lorem ipsum dolor sit amet lorem lorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet lorem lorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum dolor sit amet loremlorem ipsum'),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

class BottomSheetImagePicker extends StatelessWidget {
  BottomSheetImagePicker({
    super.key,
  });

  final ImageController _imageController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text("Camera"),
            leading: Icon(Icons.camera_alt),
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            onTap: () => _imageController.pickImage(ImageSource.camera),
          ),
          Divider(thickness: 1.5, height: 0),
          ListTile(
            title: Text("Gallery"),
            leading: Icon(Icons.image),
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            onTap: () => _imageController.pickImage(ImageSource.gallery),
          ),
        ],
      ),
    );
  }
}
