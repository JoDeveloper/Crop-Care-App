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
    bool giveVerse = false;
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
                SettingsSection(
                  title: 'General',
                  tiles: [
                    buildTiles(
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
                    buildTiles(
                      leading: Icon(Icons.notifications),
                      title: Text('Notifications'),
                      subtitle: Text('English'),
                      trailing: Switch(
                        value: giveVerse,
                        onChanged: (newValue) {
                          setState(() {
                            giveVerse = newValue;
                          });
                        },
                      ),
                    ),
                    buildTiles(
                      leading: Icon(Icons.dark_mode),
                      title: Text('Dark Mode'),
                      subtitle: Text('English'),
                      trailing: Switch(value: giveVerse,
                        onChanged: (newValue) {
                          setState(() {
                            giveVerse = newValue;
                          });
                        },),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SettingsSection(
                  tiles: [
                    buildTiles(
                      leading: Icon(Icons.language),
                      title: Text('Languages'),
                      subtitle: Text('English'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    buildTiles(
                      leading: Icon(Icons.notifications),
                      title: Text('Notifications'),
                      subtitle: Text('English'),
                      trailing: Switch(value: giveVerse,
                        onChanged: (newValue) {
                          setState(() {
                            giveVerse = newValue;
                          });
                        },),
                    ),
                    buildTiles(
                      leading: Icon(Icons.dark_mode),
                      title: Text('Dark Mode'),
                      subtitle: Text('English'),
                      trailing: Switch(value: giveVerse,
                        onChanged: (newValue) {
                          setState(() {
                            giveVerse = newValue;
                          });
                        },),
                    ),
                  ],
                  title: 'General',
                ),
                const SizedBox(height: 20),
                SettingsSection(
                  tiles: [
                    buildTiles(
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
                    buildTiles(
                      leading: Icon(Icons.notifications),
                      title: Text('Notifications'),
                      subtitle: Text('English'),
                      trailing: Switch(value: giveVerse,
                        onChanged: (newValue) {
                          setState(() {
                            giveVerse = newValue;
                          });
                        },),
                    ),
                    buildTiles(
                      leading: Icon(Icons.dark_mode),
                      title: Text('Dark Mode'),
                      subtitle: Text('English'),
                      trailing: Switch(value: giveVerse,
                        onChanged: (newValue) {
                          setState(() {
                            giveVerse = newValue;
                          });
                        },),
                    ),
                  ],
                  title: 'General',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildTiles({
  required Widget leading,
  required Widget title,
  required Widget subtitle,
  required Widget trailing,
  void Function()? onTap,
}) {
  return Column(
    children: [
      ListTile(
        onTap: onTap,
        leading: leading,
        title: title,
        subtitle: subtitle,
        trailing: trailing,
      ),
    ],
  );
}
