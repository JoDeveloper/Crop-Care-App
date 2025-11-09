import 'package:flutter/material.dart';

import 'package:crop_care_app/presentation/screens/image_preview_screen.dart';

class CaptureContainer extends StatefulWidget {
  const CaptureContainer({super.key});

  @override
  State<CaptureContainer> createState() => _CaptureContainerState();
}

class _CaptureContainerState extends State<CaptureContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (ctx) => ImagePreviewScreen()),
        ),
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
