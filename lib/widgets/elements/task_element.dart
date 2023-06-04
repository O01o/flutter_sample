import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_sample/freezed_entities/todo_object.dart';

import 'package:flutter_sample/providers/todo_provider.dart';
import 'package:flutter_sample/widgets/dialogs/add_task_dialog.dart';

class TodoTaskElement extends HookConsumerWidget {
  const TodoTaskElement({Key? key, required this.todoTask}) : super(key: key);

  final TodoTask todoTask;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        top: 3,
        bottom: 3
      ),
      child: InkWell(
        child: Card(
          child: ListTile(
            subtitle: Text(todoTask.content),
          ),
        ),
        onTap: () {
          context.push('/edit');
        },
        onLongPress: () {
          showDialog(
            context: context, builder: (_) {
              return AddTodoTaskDialog(todoTask: todoTask);
            }
          );
          // ref.watch(todoMangerNotifierProvider.notifier).state = 
        },
      )
    );
  }
}