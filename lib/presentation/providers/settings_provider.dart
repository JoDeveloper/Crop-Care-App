import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:crop_care_app/data/datasources/local/notification_local_data_source.dart';

final settingsProvider = NotifierProvider<SettingsNotifier, SettingsState>(
  SettingsNotifier.new,
);

class SettingsState {
  final bool notificationsEnabled;
  final String language;

  SettingsState({this.notificationsEnabled = true, this.language = 'English'});

  SettingsState copyWith({bool? notificationsEnabled, String? language}) {
    return SettingsState(
      notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,
      language: language ?? this.language,
    );
  }
}

class SettingsNotifier extends Notifier<SettingsState> {
  static const _kLanguageKey = 'language';

  @override
  SettingsState build() {
    _loadSettings();
    return SettingsState();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    final notificationsEnabled = await loadNotificationPreference();
    final language = prefs.getString(_kLanguageKey) ?? 'English';

    state = state.copyWith(
      notificationsEnabled: notificationsEnabled,
      language: language,
    );
  }

  Future<void> toggleNotifications(bool isEnabled) async {
    if (isEnabled) {
      await enableNotifications();
    } else {
      await disableNotifications();
    }
    state = state.copyWith(notificationsEnabled: isEnabled);
  }

  Future<void> setLanguage(String language) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_kLanguageKey, language);
    state = state.copyWith(language: language);
  }
}
