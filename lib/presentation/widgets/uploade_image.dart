import 'package:flutter/material.dart';

class UploadeContainer extends StatelessWidget {
  const UploadeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFEAB308),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.upload),
            SizedBox(width: 8),
            Text('Upload from Gallery', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
