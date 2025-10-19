import 'package:flutter/material.dart';

import 'package:crop_care/presentation/screens/tabs_screen.dart';
import 'package:crop_care/core/theme/app_theme.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Crop Care',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: TabsScreen(),
    ),
  );
}
