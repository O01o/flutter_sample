import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sample/widgets/dialogs/add_task_dialog.dart';
import 'package:flutter_sample/widgets/elements/task_element.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

import 'package:flutter_sample/freezed_entities/todo_object.dart';

import 'package:flutter_sample/providers/todo_provider.dart';

class EditTaskScreen extends HookConsumerWidget {
  const EditTaskScreen({Key? key, this.index}) : super(key: key);

  final int? index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    TextEditingController controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Edit Task Screen")),
      body: CustomScrollView(
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
                      return AddTodoTaskDialog(
                        todoTask: TodoTask(
                          id: Uuid.NAMESPACE_URL, 
                          content: controller.text, 
                          createdDateTime: DateTime.now(), 
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
      )
    );
  }
}