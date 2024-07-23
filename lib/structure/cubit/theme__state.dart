part of 'theme__cubit.dart';

enum AppTheme {
  LIGHT,
  DARK;

 static AppTheme change(AppTheme appTheme) {
    switch (appTheme) {
      case AppTheme.LIGHT:
        return AppTheme.DARK;
      case AppTheme.DARK:
        return AppTheme.LIGHT;
    }
  }
}

class ThemeState {
  final AppTheme appTheme;
  ThemeState({this.appTheme = AppTheme.LIGHT});
  factory ThemeState.initial() {
    return ThemeState();
  }
  ThemeState copyWith({required AppTheme? appTheme}) {
    return ThemeState(appTheme: appTheme ?? this.appTheme);
  }
}
