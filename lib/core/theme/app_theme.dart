import 'package:flutter/material.dart';

import 'package:crop_care_app/core/theme/color_schemes.dart';
import 'package:crop_care_app/core/theme/text_style.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    colorScheme: kLightColorScheme,

    textTheme: TextTheme(
      titleLarge: AppTextStyles.headLine,
      bodyMedium: AppTextStyles.body,
    ),

    cardTheme: CardThemeData(
      color: kLightColorScheme.surface,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

  static final darkTheme = ThemeData(
    colorScheme: kDarkColorScheme,

    textTheme: TextTheme(
      titleLarge: AppTextStyles.headLine,
      bodyMedium: AppTextStyles.body,
    ),

    cardTheme: CardThemeData(
      color: kDarkColorScheme.surface,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}
