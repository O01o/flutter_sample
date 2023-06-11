import 'dart:io';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:flutter_sample/freezed_entities/todo_object.dart';
import 'package:path_provider/path_provider.dart';

Future<String> readSaveData(String savePath) async {
  Directory rootDirectory = await getApplicationDocumentsDirectory();
  print("rootDirectory: ${rootDirectory.path}");
  String path = "${rootDirectory.path}/$savePath";
  var file = File(path);
  if (!await file.exists()) {
    await file.writeAsString("");
  }
  // await pathFileStringPrinter(path);
  return await file.readAsString();
}

Future<void> writeSaveData(String savePath, String saveData) async {
  Directory rootDirectory = await getApplicationDocumentsDirectory();
  String path = "${rootDirectory.path}/$savePath";
  var file = File(path);
  // await pathFileStringPrinter(path);
  await file.writeAsString(saveData);
  // await pathFileStringPrinter(path);
}

Future<void> pathFileStringPrinter(String path) async {
  var file = File(path);
  print("pathFileStringPrint");
  print(await file.readAsString());
}