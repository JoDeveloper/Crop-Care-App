import 'package:crop_care/presentation/widgets/gradient_scaffold.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      appBar: AppBar(title: Text('data')),
      body: Center(child: Text('data')),
    );
  }
}
