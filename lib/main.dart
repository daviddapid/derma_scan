import 'dart:io';

import 'package:card_swiper/card_swiper.dart';
import 'package:derma_scan/detail.dart';
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
      // theme: Theme.of(context).copyWith(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
      //   useMaterial3: true,
      // ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
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
        title: const Text('Derma Scan', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.lightBlue.shade300,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
          child: Column(
            children: [
              // -----------------
              // INPUT FILE PICKER
              // -----------------
              InkWell(
                onTap: () async {
                  Get.bottomSheet(
                    BottomSheetImagePicker(),
                  );
                },
                child: Obx(
                  () => Container(
                    padding: const EdgeInsets.all(3),
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
                        : const Icon(Icons.upload_rounded),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              // -----------
              // SCAN BUTTON
              // -----------
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    _imageController.predict();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                  ),
                  child: const Text("Scan"),
                ),
              ),

              SizedBox(height: 30),

              Container(
                decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.red)),
                width: double.infinity,
                height: 339,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 1.5,
                      child: Column(
                        children: [
                          Image.network(
                            'https://images.unsplash.com/photo-1692721430986-6d71f39afe48?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60',
                            height: 110,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.red)),
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 6),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Title',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                      'lorem ipsum dolor sit amet lorem ipsum mdolor sit amet lorem ipsum dolor sit amet '),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        // TextButton(onPressed: () {}, child: Text('lihat browser')),
                                        // TextButton(onPressed: () {}, child: Text('lihat detail'))
                                        TextButton.icon(
                                          onPressed: () {},
                                          label: Text('lihat browser'),
                                          icon: Icon(Icons.search, size: 15),
                                        ),
                                        TextButton.icon(
                                          // onPressed: () => Get.to(() => Detail(tagHero: 'tag-$index')),
                                          onPressed: () => Get.to(() => Detail(), transition: Transition.fadeIn),
                                          label: Text('lihat detail'),
                                          icon: Icon(
                                            Icons.remove_red_eye,
                                            size: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: 10,
                  viewportFraction: 0.8,
                  scale: 0.9,
                ),
              )
            ],
          ),
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
            title: const Text("Camera"),
            leading: const Icon(Icons.camera_alt),
            contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            onTap: () => _imageController.pickImage(ImageSource.camera),
          ),
          const Divider(thickness: 1.5, height: 0),
          ListTile(
            title: const Text("Gallery"),
            leading: const Icon(Icons.image),
            contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            onTap: () => _imageController.pickImage(ImageSource.gallery),
          ),
        ],
      ),
    );
  }
}
