import 'package:flutter/material.dart';

import 'package:crop_care_app/presentation/providers/settings_provider.dart';
import 'package:crop_care_app/presentation/providers/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/presentation/widgets/about_app.dart';
import '/core/theme/app_colors.dart';
import '/presentation/widgets/settings_section.dart';
import '/presentation/widgets/gradient_scaffold.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(settingsProvider);
    final isDark = ref.watch(themeProvider) == ThemeMode.dark;

    return GradientScaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Settings', style: TextStyle(fontWeight: FontWeight.w400)),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(16),
            child: Column(
              children: [
                SettingsSections(
                  icon: Icons.language,
                  title: 'General',
                  tiles: [
                    ListTile(
                      onTap: _showLanguageDialog,
                      leading: Icon(Icons.language),
                      title: Text('Languages'),
                      subtitle: Text(settings.language),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications),
                      title: Text('Notifications'),
                      subtitle: Text(
                        settings.notificationsEnabled ? 'On' : 'Off',
                      ),
                      trailing: Switch(
                        value: settings.notificationsEnabled,
                        onChanged: (value) {
                          ref
                              .read(settingsProvider.notifier)
                              .toggleNotifications(value);
                        },
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.dark_mode),
                      title: Text('Dark Mode'),
                      subtitle: Text(isDark ? 'Dark' : 'Light'),
                      trailing: Switch(
                        value: isDark,
                        onChanged: (value) {
                          ref.read(themeProvider.notifier).toggleTheme(value);
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SettingsSections(
                  icon: Icons.live_help_outlined,
                  title: 'Help & Support',
                  tiles: [
                    ListTile(
                      leading: Icon(Icons.book),
                      title: Text('User Guid'),
                      subtitle: Text('Learn how to use crop care'),
                      onTap: _showHelpDialog,
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text('Contact Support'),
                      subtitle: Text('Get help from our team'),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('feature coming soon.')),
                        );
                      },
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.star_rounded),
                      title: Text('Rate The App'),
                      subtitle: Text('Share your feedback'),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Thank you for your interest! Rating feature coming soon.',
                            ),
                          ),
                        );
                      },
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
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
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('feature coming soon.')),
                        );
                      },
                      leading: Icon(Icons.privacy_tip),
                      title: Text('Privacy Policy'),
                      subtitle: Text('Learn about data usage'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('feature coming soon.')),
                        );
                      },
                      leading: Icon(Icons.menu_book_rounded),
                      title: Text('Terms Of Service'),
                      subtitle: Text('Usage terms and conditions'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
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
                      'About Crop Care',
                      style: TextStyle(
                        color: const Color.fromARGB(191, 65, 65, 65),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                AboutApp(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showLanguageDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Select Language'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildLanguageOption('English'),
            _buildLanguageOption('العربية'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageOption(String language) {
    final currentLanguage = ref.read(settingsProvider).language;
    return RadioListTile<String>(
      title: Text(language),
      value: language,
      // ignore: deprecated_member_use
      groupValue: currentLanguage,
      // ignore: deprecated_member_use
      onChanged: (value) {
        if (value != null) {
          ref.read(settingsProvider.notifier).setLanguage(value);
        }
        Navigator.of(context).pop();
      },
    );
  }

  void _showHelpDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Help & Support'),
        content: const SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'How to use Crop Care:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('1. Capture or upload a clear image of the crop leaf'),
              Text('2. Wait for AI analysis to complete'),
              Text('3. Review the disease identification results'),
              Text('4. Follow the recommended treatment steps'),
              Text('5. Check your history for past analyses'),
              SizedBox(height: 12),
              Text(
                'Tips for better results:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('• Use good lighting conditions'),
              Text('• Fill the frame with the leaf'),
              Text('• Avoid blurry or dark images'),
              Text('• Focus on affected areas'),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Got it'),
          ),
        ],
      ),
    );
  }
}
