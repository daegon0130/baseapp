# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build & Development Commands

```bash
flutter pub get              # Install dependencies
flutter analyze              # Static analysis (run before commits)
flutter test                 # Run tests
flutter run                  # Run in debug mode
dart format lib/             # Format code
flutter gen-l10n             # Regenerate localization files after editing .arb files
flutter clean                # Clean build artifacts
```

### Asset Generation
```bash
flutter pub run flutter_launcher_icons                # Generate app icons from assets/icons/icon.png
flutter pub run flutter_native_splash:create          # Generate splash screen
```

## Architecture

Layered architecture with Provider state management and GoRouter routing.

```
lib/
├── clients/        # External service clients (Discord webhook, etc.)
├── models/         # Immutable data models with fromJson/toJson
├── repositories/   # Data access layer (Supabase queries)
├── screens/        # Full-screen widgets (suffixed with Screen)
├── states/         # ChangeNotifier providers
├── theme/          # ThemeData (light/dark), AppColors
├── utils/          # Helper functions
├── widget/         # Reusable widgets and dialogs
├── l10n/           # Localization: .arb files + generated dart files
├── admob.dart      # AdMob singleton handler
├── main.dart       # Entry point, provider setup, Supabase init
└── router.dart     # GoRouter route definitions
```

## Key Patterns

**State management**: `ChangeNotifier` + `Provider`. State classes go in `states/`, consumed via `Consumer<T>` or `Provider.of<T>(context)`.

**Routing**: GoRouter in `router.dart`. Navigate with `context.push('/path')`, go back with `context.pop()`.

**Theming**: `lib/theme/app_theme.dart` defines `lightTheme` and `darkTheme` using Material 3 (`useMaterial3: true`). Font: PretendardJP (primary) with TossFace (emoji fallback via `fontFamilyFallback`). Colors defined in `lib/theme/app_color.dart`.

**Localization**: 5 languages (en, es, ko, ja, zh). Template file is `lib/l10n/app_en.arb`. Access via `AppLocalizations.of(context)!`. Config in `l10n.yaml`. Run `flutter gen-l10n` after editing .arb files.

**Environment**: `.env` loaded via `flutter_dotenv` containing `SUPABASE_URL` and `SUPABASE_ANON_KEY`.

**Settings persistence**: `shared_preferences` for theme mode and locale. `AppSettingsProvider` detects system defaults on first launch, then uses saved preferences.

## Conventions

- Files: `snake_case.dart`. Classes: `PascalCase`. Variables/functions: `camelCase`.
- Prefer `StatelessWidget` with `const` constructors. Use `StatefulWidget` only when needed.
- Models: immutable (`final` fields), include `fromJson`/`toJson`, optionally `copyWith`.
- All user-facing strings must use localization (no hardcoded strings).
- Linting: `package:flutter_lints/flutter.yaml`

## Git Commit Convention

`feat:` / `fix:` / `docs:` / `style:` / `refactor:` / `test:` / `chore:`
