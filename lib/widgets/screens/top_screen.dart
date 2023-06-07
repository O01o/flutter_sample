import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_sample/providers/todo_provider.dart';
import 'package:flutter_sample/widgets/elements/task_element.dart';

class TopScreen extends HookConsumerWidget {
  const TopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(title: const Text("Top Screen")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FutureBuilder(
          future: ref.watch(todoMangerNotifierProvider.future),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data!.todoTaskList != []) { 
                return CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) => TodoTaskElement(
                          todoTask: snapshot.data!.todoTaskList[index], 
                          index: index
                        ),
                        childCount: snapshot.data!.todoTaskList.length,
                      ),
                    ),
                  ],
                );
              } else {
                return const Center(
                  child: Text("no tasks..."),
                );
              }
            } else {
              return const Center(
                child: CircularProgressIndicator()
              );
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.push('/edit');
        }
      ),
    );
  }
}