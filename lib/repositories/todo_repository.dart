import 'dart:convert';

import 'package:flutter_sample/freezed_entities/todo_object.dart';
import 'package:flutter_sample/device/file_io.dart';

/**
 * entities層で定義した構造をproviders層で実行するのですが、
 * 単一のユースケースでアルゴリズムが必要となる場合や、
 * 複数のユースケースで共通したコードを再利用で回したい時等に活用します。
 * これも使い道は人それぞれな気がしますが、
 * とにかく、関心領域を分離させて各々のコードをスッキリさせることが目的です。
 */

Future<TodoManager> todoTaskListUpdateAndSave(TodoManager todoManager, String savePath, List<TodoTask> Function(List<TodoTask>) callback) async {
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