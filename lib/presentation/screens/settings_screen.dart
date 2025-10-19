import 'package:crop_care/presentation/widgets/about_app.dart';
import 'package:flutter/material.dart';

import 'package:crop_care/core/theme/app_colors.dart';
import 'package:crop_care/presentation/widgets/settings_section.dart';
import 'package:crop_care/presentation/widgets/gradient_scaffold.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool notificationToggle = true;

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Settings', style: TextStyle(fontWeight: FontWeight.w400)),
        backgroundColor: Colors.transparent,
        // elevation: 0,
      ),

      body: ListView(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(16),
            child: Column(
              children: [
                /// General Section
                ///
                /// this section is about General it contains Languages, Notifications and Dark Mode
                SettingsSections(
                  icon: Icons.language,
                  title: 'General',
                  tiles: [
                    ListTile(
                      onTap: () {},
                      leading: Icon(Icons.language),
                      title: Text('Languages'),
                      subtitle: Text('English'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications),
                      title: Text('Notifications'),
                      subtitle: Text('English'),
                      trailing: Switch(
                        value: notificationToggle,
                        onChanged: (newValue) {
                          setState(() {
                            notificationToggle =
                                newValue; // TODO state managment with reverpod
                          });
                        },
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.dark_mode),
                      title: Text('Dark Mode'),
                      subtitle: Text('English'),
                      trailing: Switch(
                        value: false,
                        onChanged: (newValue) {
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),

                /// Help & Support Section
                ///
                /// this section is about Help & Support it contains User guid, Contact Support and Rate The App
                const SizedBox(height: 20),
                SettingsSections(
                  icon: Icons.live_help_outlined,
                  title: 'Help & Support',
                  tiles: [
                    ListTile(
                      leading: Icon(Icons.book),
                      title: Text('User Guid'),
                      subtitle: Text('Learn how to use crop care'),
                      onTap: () {},
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text('Contact Support'),
                      subtitle: Text('Get help from our team'),
                      onTap: () {},
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.star_rounded),
                      title: Text('Rate The App'),
                      subtitle: Text('Share your feedback'),
                      onTap: () {},
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),

                /// Data & Privacy Section
                ///
                /// this section is about Data & Privacy it contains User guid, Contact Support and Rate The App
                const SizedBox(height: 20),
                SettingsSections(
                  icon: Icons.privacy_tip_outlined,
                  title: 'data & Privacy',
                  tiles: [
                    ListTile(
                      onTap: () {},
                      leading: Icon(Icons.restore_from_trash_rounded),
                      title: Text('Clear History'),
                      subtitle: Text('Remove all analysis history'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(Icons.privacy_tip),
                      title: Text('Privacy Policy'),
                      subtitle: Text('Learn about data usage'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(Icons.menu_book_rounded),
                      title: Text('Terms Of Service'),
                      subtitle: Text('Usage terms and conditions'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),

                /// About Crop Care Section
                ///
                /// this section is about About Crop Care it contains Summary info about the app and Development Team
                const SizedBox(height: 20),
                Row(
                  children: [
                    Icon(
                      color: AppColors.primary,
                      Icons.shield_outlined,
                      size: 22,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'About Crop Care', // section title
                      style: TextStyle(
                        color: const Color.fromARGB(
                          191,
                          65,
                          65,
                          65,
                        ), // section title color
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                /// About App Section
                ///
                /// this is the last section in the settings screen .
                /// this section had additon elements, soo I make a new widget called [AboutApp()]
                /// contains the addition elements and configuration the needs.
                AboutApp(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
