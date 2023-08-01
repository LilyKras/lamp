import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class AllChangesNotifier extends StateNotifier<List<String>> {
  AllChangesNotifier() : super(const []);
  Future<void> addChange(bool themeMode) async {
    state = [
      "${DateFormat('d MMMM y HH:MM:ss').format(DateTime.now())}, ${themeMode ? "dark" : "light"}",
      ...state
    ];
  }
}

final allChangesProvider = StateNotifierProvider((ref) {
  return AllChangesNotifier();
});
