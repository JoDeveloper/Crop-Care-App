import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:crop_care_app/presentation/screens/tabs_screen.dart';
import 'package:crop_care_app/core/theme/app_theme.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Crop Care',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
        
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF22C55E),
          primary: const Color(0xFF22C55E),
          secondary: const Color(0xFFEAB308),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shadowColor: Colors.transparent,
          ),
        ),

        cardTheme: CardThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 0,
          margin: const EdgeInsets.all(8),
        ),
      ),
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: const TabsScreen(),
    ),
  );
}
