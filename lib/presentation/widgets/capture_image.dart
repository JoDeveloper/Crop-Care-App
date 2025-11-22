import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '/presentation/screens/image_preview_screen.dart';

 File? image;

class CaptureContainer extends StatefulWidget {
  const CaptureContainer({super.key});

  @override
  State<CaptureContainer> createState() => _CaptureContainerState();
}

class _CaptureContainerState extends State<CaptureContainer> {
 
  void _pickImage() async {
    final pickedImage = await ImagePicker().pickImage(
      source: ImageSource.camera,
      imageQuality: 100,
      maxWidth: 1000,
    );

    if (pickedImage == null) {
      return;
    }

    setState(() {
      image = File(pickedImage.path);
    });

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ImagePreviewScreen(),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _pickImage,
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.camera_alt),
            SizedBox(width: 8),
            Text('Capture Photo', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
