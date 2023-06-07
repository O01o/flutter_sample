import 'dart:io';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:flutter_sample/freezed_entities/todo_object.dart';
import 'package:path_provider/path_provider.dart';

Future<String> readSaveData(String savePath) async {
  Directory rootDirectory = await getApplicationDocumentsDirectory();
  String path = "${rootDirectory.path}/$savePath";
  var file = File(path);
  if (!await file.exists()) {
    await file.writeAsString("{}");
  }
  return rootBundle.loadString(path);
}

Future<void> writeSaveData(String filePath, String saveData) async {
  Directory rootDirectory = await getApplicationDocumentsDirectory();
  var file = File("${rootDirectory.path}/$filePath");
  await file.writeAsString(saveData);
}