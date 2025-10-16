import 'package:flutter/material.dart';

class SettingsSection extends StatefulWidget {
  const SettingsSection({super.key, required this.title, required this.tiles});
  final String title;
  final List<Widget> tiles;

  @override
  State<SettingsSection> createState() => _SettingsSectionState();
}

class _SettingsSectionState extends State<SettingsSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            color: const Color.fromARGB(191, 65, 65, 65),
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(193, 228, 247, 222),
          ),
          child: Column(children: [...widget.tiles]),
        ),
      ],
    );
  }
}

class GeneralSettingsSection extends StatelessWidget {
  const GeneralSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'General',
          style: TextStyle(
            color: const Color.fromARGB(191, 65, 65, 65),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(193, 228, 247, 222),
          ),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.language),
                title: Text('Languages'),
                subtitle: Text('English'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(thickness: 1, color: Colors.black26),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notifications'),
                subtitle: Text('English'),
                trailing: Switch(value: true, onChanged: (_) {}),
              ),
              Divider(thickness: 1, color: Colors.black26),

              ListTile(
                leading: Icon(Icons.dark_mode),
                title: Text('Dark Mode'),
                subtitle: Text('English'),
                trailing: Switch(value: true, onChanged: (_) {}),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DataAndPrivacySettingsSection extends StatelessWidget {
  const DataAndPrivacySettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Data & Privacy',
          style: TextStyle(
            color: const Color.fromARGB(191, 65, 65, 65),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(193, 228, 247, 222),
          ),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.language),
                title: Text('Languages'),
                subtitle: Text('English'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(thickness: 1, color: Colors.black26),

              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notifications'),
                subtitle: Text('English'),
                trailing: Switch(value: true, onChanged: (_) {}),
              ),
              Divider(thickness: 1, color: Colors.black26),

              ListTile(
                leading: Icon(Icons.dark_mode),
                title: Text('Dark Mode'),
                subtitle: Text('English'),
                trailing: Switch(value: true, onChanged: (_) {}),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SupportSettingsSection extends StatelessWidget {
  const SupportSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Support',
          style: TextStyle(
            color: const Color.fromARGB(191, 65, 65, 65),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(193, 228, 247, 222),
          ),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.language),
                title: Text('Languages'),
                subtitle: Text('English'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(thickness: 1, color: Colors.black26),

              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notifications'),
                subtitle: Text('English'),
                trailing: Switch(value: true, onChanged: (_) {}),
              ),
              Divider(thickness: 1, color: Colors.black26),

              ListTile(
                leading: Icon(Icons.dark_mode),
                title: Text('Dark Mode'),
                subtitle: Text('English'),
                trailing: Switch(value: true, onChanged: (_) {}),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
