import 'package:flutter/material.dart';

import 'package:crop_care/presentation/widgets/gradient_scaffold.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
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
