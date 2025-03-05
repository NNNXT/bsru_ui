import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  String imagePath = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(imagePath),
            imagePath.isEmpty
                ? const SizedBox.shrink()
                : Image.file(File(imagePath)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        ImagePicker picker = ImagePicker();
        var image = await picker.pickImage(
          source: ImageSource.camera,
        );
        if (image != null) {
          setState(() {
            imagePath = image.path;
          });
        }
      }),
    );
  }
}
