import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'dart:io';
import 'dart:convert';

part 'todo_object.freezed.dart';
part 'todo_object.g.dart';

// 単一のTodoTaskの構造体
/**
 * 単一のTodoタスクの構造を定義しています。
 */
@freezed
class TodoTask with _$TodoTask {
  const factory TodoTask({
    required String id,
    required String content,
    required DateTime createdDateTime,
    required DateTime updatedDateTime
  }) = _TodoTask;

  factory TodoTask.fromJson(Map<String, dynamic> json) => _$TodoTaskFromJson(json);
}

//  * 
/**
 * すべての情報を取りまとめたオブジェクトとして構造を定義しています。
 * 主にこれをprovidersを通じて、変更・保存したり、
 * widgetsを通じて、データ構造(主にTodoリスト)を画面に描画します。
 */
@freezed
class TodoManager with _$TodoManager {
  const factory TodoManager({
    String? userName,
    String? userProfile,
    @Default([]) List<TodoTask> todoTaskList
  }) = _TodoManager;

  factory TodoManager.fromJson(Map<String, dynamic> json) => _$TodoManagerFromJson(json);
}