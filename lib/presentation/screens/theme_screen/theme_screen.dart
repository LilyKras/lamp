import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lamp_app/data/theme/dark_theme.dart';
import 'package:lamp_app/data/theme/theme.dart';
import 'package:lamp_app/domain/theme_manager.dart';

class ThemeScreen extends ConsumerWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    var themeMode = ref.watch(themeManager) as bool;
    return Theme(
      data: themeMode ? darkTheme : lightTheme,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Your theme'),
        ),
        body: Center(
          child: Text(
            themeMode ? 'Bye, world' : 'Hello, world',
            style: const TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
