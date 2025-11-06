import 'package:flutter/material.dart';

class HistorySearhBar extends StatelessWidget {
  const HistorySearhBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextField(
        // controller: controller,
        decoration: InputDecoration(
              hintText: 'Search analysis results...',
              prefixIcon: const Icon(Icons.search),
              filled: true,
              fillColor: const Color.fromARGB(255, 217, 217, 217),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
            ),
      ),
    );
  }
}
