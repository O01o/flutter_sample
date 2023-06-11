import 'dart:io';
import 'dart:convert';

void main(List<String> args) async {
  File inputFile = File("./input/hoge/sample.json");
  Map<String, dynamic> jsonData; 

  try {
    String jsonString = await inputFile.readAsString();
    print("jsonString: $jsonString");
    jsonData = json.decode(jsonString);
    print("jsonData: $jsonData");
    jsonData["age"] = 32;
    jsonData["has-driver-license"] = false;
    print("jsonData: $jsonData");
    jsonString = json.encode(jsonData);
    print("jsonString: $jsonString");
  } catch (e) {
    print(e);
  }

  return;
}