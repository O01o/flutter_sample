void main(List<String> args) {
  List<String> pathList = ["dir1", "dir2", "filename.txt"];
  String path = pathList.join("/");
  print(path);
  List<String> newPathList = path.split("/");
  print(newPathList);
  String fileName = newPathList.last;
  print(fileName);
}