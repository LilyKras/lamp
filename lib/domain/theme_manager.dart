import 'package:flutter_riverpod/flutter_riverpod.dart';


class ThemeNotifier extends StateNotifier<bool> {
  ThemeNotifier() : super(false);

  void updateTheme() {
    state = !state;
  }

}

final themeManager = StateNotifierProvider((ref) {
  return ThemeNotifier();
});
