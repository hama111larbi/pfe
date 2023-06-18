import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class RoutePage extends StatefulWidget {
  const RoutePage({super.key});

  @override
  State<RoutePage> createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bledi',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 6, 3, 38),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.2,
                0.5,
                0.8,
                0.7,
              ],
              colors: [
                Color.fromRGBO(227, 242, 253, 1),
                Color.fromRGBO(187, 222, 251, 1),
                Color.fromRGBO(144, 202, 249, 1),
                Color.fromRGBO(100, 181, 246, 1),
              ]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (imageFile != null)
                Container(
                  width: 640,
                  height: 480,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                        image: FileImage(imageFile!), fit: BoxFit.cover),
                    border: Border.all(width: 8, color: Colors.black),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                )
              else
                Container(
                  width: 640,
                  height: 480,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(width: 8, color: Colors.black12),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: const Text(
                    'Image should appear here',
                    style: TextStyle(fontSize: 26),
                  ),
                ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () => getImage(source: ImageSource.camera),
                        child: const Text('Capture Image',
                            style: TextStyle(fontSize: 18))),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () => getImage(source: ImageSource.gallery),
                        child: const Text('Select Image',
                            style: TextStyle(fontSize: 18))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  //create a function if we want a camera image or gallery image

  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(
        source: source, maxWidth: 640, maxHeight: 480, imageQuality: 70);

    if (file?.path != null) {
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }
}
