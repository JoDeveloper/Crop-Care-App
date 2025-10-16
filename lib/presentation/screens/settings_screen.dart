import 'package:flutter/material.dart';

import 'package:crop_care/presentation/screens/history_screen.dart';
import 'package:crop_care/presentation/widgets/settings_section.dart';
import 'package:crop_care/presentation/widgets/gradient_scaffold.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool notificationToggle = false;
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
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => HistoryScreen()),
                        );
                      },
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
                            notificationToggle = newValue;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.dark_mode),
                      title: Text('Dark Mode'),
                      subtitle: Text('English'),
                      trailing: Switch(
                        value: true,
                        onChanged: (newValue) {
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                /// Help & Support Section
                ///
                /// this section is about Help & Support it contains User guid, Contact Support and Rate The App
                SettingsSections(
                   icon: Icons.live_help_outlined,
                  title: 'Help & Support',
                  tiles: [
                    ListTile(
                      leading: Icon(Icons.book),
                      title: Text('User Guid'),
                      subtitle: Text('Learn how to use crop care'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text('Contact Support'),
                      subtitle: Text('Get help from our team'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.star_rounded),
                      title: Text('Rate The App'),
                      subtitle: Text('Share your feedback'),
                      onTap: () {},
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
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => HistoryScreen()),
                        );
                      },
                      leading: Icon(Icons.restore_from_trash_rounded),
                      title: Text('Clear History'),
                      subtitle: Text('Remove all analysis history'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.privacy_tip),
                      title: Text('Privacy Policy'),
                      subtitle: Text('Learn about data usage'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
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
                SettingsSections(
                   icon: Icons.shield_outlined,
                  // TODO modify this section as in the figma first app design not the seconf one
                  title: 'About Crop Care',
                  tiles: [
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => HistoryScreen()),
                        );
                      },
                      leading: Icon(Icons.groups_outlined),
                      title: Text('Development Team'),
                      subtitle: Text('Meet the creators'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
