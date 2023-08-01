import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lamp_app/domain/theme_manager.dart';

class SwitchScreen extends ConsumerWidget {
  const SwitchScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    var themeMode = ref.watch(themeManager) as bool;
    return Scaffold(
      bottomSheet: ElevatedButton(child: const Text('Check'), onPressed: (){GoRouter.of(context).push('/theme');},),
      appBar: AppBar(title: const Text('Select your theme')),
        body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('Light'),
          Switch(
              value: themeMode,
              onChanged: (_) {
                ref.read(themeManager.notifier).updateTheme();
              },),
              const Text('Dark'),
        ],
      ),
    ),);
  }
}
