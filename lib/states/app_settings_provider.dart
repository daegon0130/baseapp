import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSettingsProvider extends ChangeNotifier {
  static const String _themeModeKey = 'theme_mode';
  static const String _localeKey = 'locale';
  static const List<String> _supportedLanguages = ['en', 'es', 'ko', 'ja', 'zh'];

  ThemeMode _themeMode = ThemeMode.light;
  Locale _locale = const Locale('en');

  ThemeMode get themeMode => _themeMode;
  Locale get locale => _locale;

  AppSettingsProvider() {
    // 시스템 설정을 기본값으로 사용
    final platformDispatcher = WidgetsBinding.instance.platformDispatcher;
    _themeMode = platformDispatcher.platformBrightness == Brightness.dark
        ? ThemeMode.dark
        : ThemeMode.light;
    final systemLang = platformDispatcher.locale.languageCode;
    _locale = _supportedLanguages.contains(systemLang)
        ? Locale(systemLang)
        : const Locale('en');

    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();

    // 테마 모드 로드
    final themeModeString = prefs.getString(_themeModeKey);
    if (themeModeString != null) {
      _themeMode = ThemeMode.values.firstWhere(
        (mode) => mode.toString() == themeModeString,
        orElse: () => ThemeMode.light,
      );
    }

    // 언어 로드
    final localeString = prefs.getString(_localeKey);
    if (localeString != null && localeString.isNotEmpty) {
      _locale = Locale(localeString);
    }

    notifyListeners();
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    _themeMode = mode;
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_themeModeKey, mode.toString());
  }

  Future<void> setLocale(Locale locale) async {
    _locale = locale;
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_localeKey, locale.languageCode);
  }
}


