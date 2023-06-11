import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

class TextIsEmptyDialog extends HookConsumerWidget {
  const TextIsEmptyDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      title: const Text("text is empty, so cannot add task"),
      actions: [
        ElevatedButton(
          child: const Text("OK"),
          onPressed: () {
            context.pop();
          },
        )
      ],
    );
  }
}