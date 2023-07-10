import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sample/use_cases/todo_provider.dart';
import 'package:flutter_sample/widgets/dialogs/add_task_dialog.dart';
import 'package:flutter_sample/widgets/dialogs/update_task_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

import 'dart:io';
import 'dart:convert';

import 'package:flutter_sample/entities/freezed/todo_object.dart';
// import 'package:flutter_sample/providers/todo_provider.dart';

class UpdateTaskScreen extends HookConsumerWidget {
  const UpdateTaskScreen({Key? key, this.todoTaskJson}) : super(key: key);

  final String? todoTaskJson;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    TextEditingController controller = TextEditingController();

    useEffect(() {
      try {
        controller.text = json.decode(todoTaskJson!);
      } catch (e) {
        print(e);
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text("Update Task Screen")),
      body: Padding(
        padding: const EdgeInsets.all(10.0), 
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  TextField(
                    controller: controller,
                  ),
                  ElevatedButton(
                    child: const Text("OK"),
                    onPressed: () {
                      showDialog(context: context, builder: (_) {
                        try {
                          TodoTask todoTask = json.decode(todoTaskJson!);
                          return UpdateTodoTaskDialog(
                            todoTask: todoTask.copyWith(
                              content: controller.text,
                              updatedDateTime: DateTime.now()
                            )
                          );
                        } catch (e) {
                          return AddTodoTaskDialog(
                            todoTask: TodoTask(
                              id: const Uuid().v4(),
                              content: controller.text, 
                              createdDateTime: DateTime.now(), 
                              updatedDateTime: DateTime.now()
                            )
                          );
                        }
                      });
                    }, 
                  ),
                ]
              )
            )
          ],
        ),
      )
    );
  }
}