import 'package:flutter/material.dart';

import 'package:crop_care_app/presentation/widgets/quick_status_section.dart';
import 'package:crop_care_app/presentation/widgets/custom_capture_container.dart';
import 'package:crop_care_app/presentation/widgets/custom_home_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const CustomHomeAppBar(),

          const SizedBox(height: 16),
          Text(
            'How can we help your crops today?',
            style: TextStyle(
              color: const Color.fromARGB(255, 65, 65, 65),
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),

          const SizedBox(height: 16),
          CustomCaptureContainer(
            onTap: () {},
            title: 'Capture Image',
            subTitle: 'Take a photo of your crop leaf',
            icon: Icons.camera_alt,
            color1: Theme.of(context).colorScheme.primary.withValues(alpha: .8),
            color2: Theme.of(context).colorScheme.primary,
          ),

          const SizedBox(height: 14),
          CustomCaptureContainer(
            onTap: () {},
            title: 'Uploade Image',
            subTitle: 'Select from your gallery',
            icon: Icons.upload_rounded,
           color1: Theme.of(context).colorScheme.secondary.withValues(alpha: .8),
            color2: Theme.of(context).colorScheme.secondary,
          ),

          const SizedBox(height: 22),
          QuickStatsSection(),
        ],
      ),
    );
  }
}
