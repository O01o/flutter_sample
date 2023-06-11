import 'dart:io';

void main(List<String> args) {
  for (String arg in args) {
    print(arg);
  }

  print("Hello World");
  stdout.write("please tell me your name: ");
  String? name = stdin.readLineSync();
  print("Your name is $name");

  return;
}