import 'package:flutter/material.dart';
import 'package:flutter_sample/providers/todo_provider.dart';
import 'package:flutter_sample/widgets/dialogs/add_task_dialog.dart';
import 'package:flutter_sample/widgets/dialogs/update_task_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

import 'package:flutter_sample/freezed_entities/todo_object.dart';
// import 'package:flutter_sample/providers/todo_provider.dart';

class UpdateTaskScreen extends HookConsumerWidget {
  const UpdateTaskScreen({Key? key, required this.todoTask}) : super(key: key);

  final TodoTask todoTask;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    TextEditingController controller = TextEditingController(text: todoTask.content);

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
                        return UpdateTodoTaskDialog(
                          todoTask: todoTask.copyWith(
                            content: controller.text,
                            updatedDateTime: DateTime.now()
                          )
                        );
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