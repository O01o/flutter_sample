import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_sample/freezed_entities/todo_object.dart';

import 'package:flutter_sample/providers/todo_provider.dart';

class UpdateTodoTaskDialog extends HookConsumerWidget {
  const UpdateTodoTaskDialog({Key? key, required this.todoTask}) : super(key: key);

  final TodoTask todoTask;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return AlertDialog(
      title: const Text("update todo task?"),
      content: Text(todoTask.content),
      actions: [
        ElevatedButton(
          child: const Text("cancel"),
          onPressed: () => context.pop(context),
        ),
        ElevatedButton(
          child: const Text("OK"),
          onPressed: () { 
            ref.watch(todoMangerNotifierProvider.notifier).updateTask2(todoTask);
            context.go("/");
          }
        ),
      ],
    );
  }
}