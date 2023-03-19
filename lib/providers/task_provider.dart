import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'dart:io';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'task_provider.freezed.dart';
part 'task_provider.g.dart';

@freezed
class TaskData with _$TaskData {
  const factory TaskData({
    required String title,
    required String details,
    required DateTime createdDateTime,
    required DateTime updatedDateTime,
  }) = _TaskData;

  factory TaskData.fromJson(Map<String, dynamic> json) => _$TaskDataFromJson(json);
}

String fileName = "task_data.json";

final issueDataListFutureProvider = FutureProvider.autoDispose<List<TaskData>>((ref) async {
  List<TaskData> taskDataList = [];
  Directory saveDirectory = await getApplicationDocumentsDirectory();
  String savePath = "${saveDirectory.path}/$fileName";
  var taskDataJsonFile = File(savePath);
  if (!await taskDataJsonFile.exists()) {
    print("loading asset data...");
    String assetJsonString = await rootBundle.loadString('assets/data/task_data.json');
    await taskDataJsonFile.writeAsString(assetJsonString);
  } else {
    print("taskDataJsonFile has already existed");
  }
  String taskDataJsonString = await taskDataJsonFile.readAsString();
  List<dynamic> taskDataMapList = json.decode(taskDataJsonString);
  for (Map<String, dynamic> taskDataMap in taskDataMapList) {
    taskDataList.add(TaskData.fromJson(taskDataMap));
  }
  return taskDataList;
});

void jsonSerializeTaskDataList(List<TaskData> taskDataList) async {
  List<String> taskDataJsonStringList = [];
  for (TaskData taskData in taskDataList) {
    Map<String, dynamic> taskDataMap = taskData.toJson();
    taskDataJsonStringList.add(json.encode(taskDataMap));
  }
  String taskDataJsonString = "[${taskDataJsonStringList.join(", ")}]";
  Directory saveDirectory = await getApplicationDocumentsDirectory();
  String savePath = "${saveDirectory.path}/$fileName";
  var taskDataJsonFile = File(savePath);
  await taskDataJsonFile.writeAsString(taskDataJsonString);
}

final TaskDataListProvider = StateNotifierProvider.autoDispose<TaskDataListNotifier, List<TaskData>>((ref) => TaskDataListNotifier(ref));

class TaskDataListNotifier extends StateNotifier<List<TaskData>> {
  TaskDataListNotifier(ref): super([]);

  void add(TaskData taskData) {

  }

  void update(TaskData taskData, int index) {
    state = [
      for (int i=0; i<state.length; i++) 
        if (i == index) state[i].copyWith(
          title: taskData.title,
          details: taskData.details,
          updatedDateTime: taskData.updatedDateTime
        )
        else state[i]
    ];
  }

  void delete(int index) {

  }
}
