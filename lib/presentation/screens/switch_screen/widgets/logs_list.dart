import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../domain/timeline_manager.dart';

class LogsList extends ConsumerWidget {
  const LogsList({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(21),
          color: const Color.fromARGB(43, 105, 15, 208),),
      padding: const EdgeInsets.all(8.0),
      height: 200,
      child: ListView.builder(
        itemCount: (ref.watch(allChangesProvider) as List<String>).length,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.all(6),
          width: 31,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(21),
          ),
          child: Center(
            child: Text(
              (ref.watch(allChangesProvider) as List<String>)[index],
            ),
          ),
        ),
      ),
    );
  }
}
