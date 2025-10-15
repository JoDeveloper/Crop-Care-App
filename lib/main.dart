import 'package:crop_care/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:crop_care/presentation/screens/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Crop Care',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: HomeScreen(),
    ),
  );
}
