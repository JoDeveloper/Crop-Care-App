import 'package:flutter/material.dart';

class GradientScaffold extends StatelessWidget {
  const GradientScaffold({super.key, required this.body, required this.appBar});
  final Widget body;
  final PreferredSizeWidget appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color.fromARGB(255, 178, 255, 180), Colors.white],
            begin: AlignmentGeometry.topCenter,
            end: AlignmentGeometry.bottomCenter,
          ),
        ),
        child: SafeArea(child: body),
      ),
    );
  }
}
