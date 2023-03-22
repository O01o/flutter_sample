void main(List<String> args) {
  List<String> fruits = ["apple", "orange", "lemon"];
  print(fruits);
  print(fruits.first);
  print(fruits.last);
  print(fruits.length);
  print(fruits.isEmpty);
  print(fruits.isNotEmpty);
  fruits.add("kiwi-fruits");
  print(fruits);
  fruits.insert(0, "grapes");
  print(fruits);
  fruits.removeAt(1);
  print(fruits);
  fruits.removeLast();
  print(fruits);

  return;
}