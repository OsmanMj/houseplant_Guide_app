import 'package:flutter/material.dart';
import '../providers/app_state.dart';

class SettingsScreen extends StatelessWidget {
  final AppState appState;

  const SettingsScreen({super.key, required this.appState});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Dark Mode'),
            subtitle: const Text('Enable dark theme across the app'),
            secondary: const Icon(Icons.dark_mode),
            value: appState.isDarkMode,
            onChanged: (bool value) {
              appState.toggleTheme(value);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Watering Reminders'),
            subtitle: const Text('Coming soon!'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // Future feature
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Feature coming soon!')),
              );
            },
          ),
        ],
      ),
    );
  }
}
