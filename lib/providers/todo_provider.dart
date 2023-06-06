import 'package:flutter_sample/freezed_entities/todo_object.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

part 'todo_provider.g.dart';

@Riverpod(keepAlive: true)
class TodoMangerNotifier extends _$TodoMangerNotifier {
  
  /**
   * アプリを起動して初めてデータが読み込まれる時の関数です。
   * 既に使用履歴があって、端末保存がされていれば、そこからTodoリスト等を読み込みます。
   * 特に何も保存されていない場合は、中が空のインスタンスを返します。
   */
  @override
  FutureOr<TodoManager> build() async { 
    TodoManager initTodoManger = TodoManager(
      todoTaskList: [
        TodoTask(
          id: Uuid.NAMESPACE_URL, 
          content: "初めてのメモ", 
          createdDateTime: DateTime.now(), 
          updatedDateTime: DateTime.now()
        ),
        TodoTask(
          id: Uuid.NAMESPACE_URL, 
          content: "二回目のメモ", 
          createdDateTime: DateTime.now(), 
          updatedDateTime: DateTime.now()
        ),
      ]
    );
    return initTodoManger;
  }

  /**
   * ここが制御部分になります。これらの関数が呼び出された時に、TodoManagerのデータに変更が起こります。
   * 主にタスクの追加・更新・削除等を行い、その変更分を逐次、端末保存で記録します。
   */

  void addTask(TodoTask todoTask) async {
    TodoManager tmpTodoManager = state.value!;
    List<TodoTask> tmpTodoTaskList = tmpTodoManager.todoTaskList;
    tmpTodoTaskList.add(todoTask);
    tmpTodoManager.copyWith(todoTaskList: tmpTodoTaskList);
    state = AsyncValue.data(tmpTodoManager);
  }

  void updateTask(TodoTask todoTask, int index) async {
    TodoManager tmpTodoManager = state.value!;
    List<TodoTask> tmpTodoTaskList = tmpTodoManager.todoTaskList;
    tmpTodoTaskList[index] = todoTask;
    tmpTodoManager.copyWith(todoTaskList: tmpTodoTaskList);
    state = AsyncValue.data(tmpTodoManager);
  }

  void deleteTask(int index) async {
    TodoManager tmpTodoManager = state.value!;
    List<TodoTask> tmpTodoTaskList = [];
    int i = 0;
    for (TodoTask todoTask in tmpTodoManager.todoTaskList) {
      if (i != index) tmpTodoTaskList.add(todoTask);
      i++;
    }
    tmpTodoManager.copyWith(todoTaskList: tmpTodoTaskList);
    state = AsyncValue.data(tmpTodoManager);
  }
}
