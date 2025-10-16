import 'package:flutter/material.dart';

import 'package:crop_care/presentation/widgets/gradient_scaffold.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // elevation: 0,
        title: Text(
          'Analysis History',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
      body: Container(),
    );
  }
}
