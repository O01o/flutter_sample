import 'dart:convert';

import 'package:flutter_sample/entities/freezed/todo_object.dart';
import 'package:flutter_sample/entities/providers/todo_entity_provider.dart';
import 'package:flutter_sample/infrastructure/device/file_io.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

/**
 * entities層で定義した構造をproviders層で実行するのですが、
 * 単一のユースケースでアルゴリズムが必要となる場合や、
 * 複数のユースケースで共通したコードを再利用で回したい時等に活用します。
 * これも使い道は人それぞれな気がしますが、
 * とにかく、関心領域を分離させて各々のコードをスッキリさせることが目的です。
 */

class TodoTaskListRepository {

  static Future<TodoManager> _updateAndSave(TodoManager todoManager, String savePath, List<TodoTask> Function(List<TodoTask>) callback) async {
    List<TodoTask> todoTaskList = callback(todoManager.todoTaskList);
    TodoManager upadtedTodoManager = todoManager.copyWith(todoTaskList: [...todoTaskList]);
    await writeSaveData(savePath, json.encode(upadtedTodoManager.toJson()));
    for (TodoTask todoTask in todoTaskList) {
      print(todoTask.content);
    }
    for (TodoTask todoTask in upadtedTodoManager.todoTaskList) {
      print(todoTask.content);
    }
    print("");
    return upadtedTodoManager;
  }

  static Future<TodoManager> add(TodoManager todoManager, String savePath, TodoTask todoTask) async {
    return await _updateAndSave(todoManager, savePath, (todoTaskList) {
      // don't use todoTaskList.add(todoTask);
      return [...todoTaskList, todoTask];
    });
  }

  static Future<TodoManager> update(TodoManager todoManager, String savePath, TodoTask updatedTodoTask) async {
    return await _updateAndSave(todoManager, savePath, (todoTaskList) {
      // don't use todoTaskList.add(todoTask);
      return [
        for (TodoTask todoTask in todoTaskList)
          if (todoTask.id == updatedTodoTask.id) updatedTodoTask
          else todoTask
      ];
    });
  }

  static Future<TodoManager> delete(TodoManager todoManager, String savePath, String id) async {
    return await _updateAndSave(todoManager, savePath, (todoTaskList) {
      // don't use todoTaskList.add(todoTask);
      return [
        for (TodoTask todoTask in todoTaskList)
          if (todoTask.id != id) todoTask,
      ];
    });
  }

}