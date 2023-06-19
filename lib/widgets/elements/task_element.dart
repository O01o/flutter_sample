import 'package:flutter/material.dart';

// import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_sample/widgets/screens/router.dart';
import 'package:flutter_sample/entities/freezed/todo_object.dart';

import 'dart:io';
import 'dart:convert';

// import 'package:flutter_sample/providers/todo_provider.dart';
import 'package:flutter_sample/widgets/dialogs/delete_task_dialog.dart';

class TodoTaskElement extends HookConsumerWidget {
  const TodoTaskElement({Key? key, required this.todoTask}) : super(key: key);

  final TodoTask todoTask;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Padding(
      padding: const EdgeInsets.only(
        left: 0,
        right: 0,
        top: 0,
        bottom: 0
      ),
      child: InkWell(
        child: Card(
          child: ListTile(
            title: Text(todoTask.id),
            subtitle: Text(todoTask.content),
          ),
        ),
        /*
        // doesn't work 
        onTap: () {
          context.pushReplacementNamed('/update-task', pathParameters: {'todo-task-json': json.encode(todoTask.toJson())});
        },
        */
        onLongPress: () {
          showDialog(
            context: context, builder: (_) {
              return DeleteTodoTaskDialog(todoTask: todoTask);
            }
          );
        },
      )
    );
  }
}