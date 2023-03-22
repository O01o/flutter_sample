import 'dart:io';

void main(List<String> args) async {
  String inputPath = "./input/hoge";
  String outputPath = "./output/hoge";
  String fileName = "sample.txt";

  String outputMessage = "sample message";

  Directory inputDirectory = Directory(inputPath);
  await inputDirectory.create(recursive: true);
  Directory outputDirectory = Directory(outputPath);
  await outputDirectory.create(recursive: true);
  File outputFile = File("$outputPath/$fileName");
  await outputFile.writeAsString(outputMessage);

  await for (FileSystemEntity entity in outputDirectory.list(recursive: true, followLinks: false)) {
    if (entity is File) {
      String fileContent = await (entity as File).readAsString();
      print("${entity.path} content: $fileContent");
    } else {
      print(entity.path);
    }
  }

  return;
}