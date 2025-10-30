import 'package:flutter/material.dart';

import 'package:crop_care_app/presentation/screens/capture_tips_screen.dart';
import 'package:crop_care_app/presentation/screens/result_screen.dart';

class ImagePreviewScreen extends StatelessWidget {
  const ImagePreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 255, 235),
      appBar: AppBar(title: Text('Analyze Your Crop')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Image Preview
            Expanded(
              child: Card(
                // shape: BeveledRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20)),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset('assets/images/8.png'),
                  ),
                ),
              ),
            ),
            // const SizedBox(height: 16),

            // Analysis Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (ctx) => ResultScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.psychology_rounded),
                    SizedBox(width: 8),
                    Text('Analyze Disease', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Choose Different Image Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => CaptureTipsScreen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.image),
                    SizedBox(width: 8),
                    Text(
                      'Choose Different Image',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
