import 'package:flutter/material.dart';
import 'package:crop_care_app/core/theme/app_colors.dart';

final kLightColorScheme =
    ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.light,
    ).copyWith(
      primaryContainer: AppColors.primary,
      onPrimaryContainer: AppColors.textLight,
      secondaryContainer: AppColors.secondary,
      onSecondaryContainer: AppColors.textLight,
      error: const Color(0xffb00020),
      onError: Colors.white,
    );


final kDarkColorScheme =
    ColorScheme.fromSeed(
      seedColor: AppColors.darkprimary,
      brightness: Brightness.dark,
    ).copyWith(
      primaryContainer: AppColors.darkprimary,
      onPrimaryContainer: AppColors.textLight,
      secondaryContainer: AppColors.secondary,
      onSecondaryContainer: AppColors.textLight,
      error: const Color(0xffb00020),
      onError: Colors.white,
    );
