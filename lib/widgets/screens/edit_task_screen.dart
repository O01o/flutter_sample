import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_sample/providers/todo_provider.dart';

class EditTaskScreen extends HookConsumerWidget {
  const EditTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(title: const Text("Edit Task Screen")),
      body: FutureBuilder(
        future: ref.watch(todoMangerNotifierProvider.future),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Text("a"),
                      Text("a"),
                      Text("a"),
                      Text("a"),
                      Text("a"),
                    ]
                  )
                )
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator()
            );
          }
        },
      )
    );
  }
}