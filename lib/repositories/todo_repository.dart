import 'dart:convert';

import 'package:flutter_sample/freezed_entities/todo_object.dart';
import 'package:flutter_sample/utils/device_io.dart';

/**
 * entities層で定義した構造をproviders層で実行するのですが、
 * 単一のユースケースでアルゴリズムが必要となる場合や、
 * 複数のユースケースで共通したコードを再利用で回したい時等に活用します。
 * これも使い道は人それぞれな気がしますが、
 * とにかく、関心領域を分離させて各々のコードをスッキリさせることが目的です。
 */

Future<TodoManager> todoTaskListUpdateAndSave(TodoManager todoManager, String savePath, Function(List<TodoTask>) callback) async {
  callback(todoManager.todoTaskList);
  todoManager.copyWith(todoTaskList: todoManager.todoTaskList);
  await writeSaveData(savePath, jsonEncode(todoManager.toJson()));
  return todoManager;
}