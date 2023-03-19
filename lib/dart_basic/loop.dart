import 'dart:io';

void main(List<String> args) {
  List<String> fruits = ["apple", "orange", "lemon"];
  for (String fruit in fruits) {
    print(fruit);
  }

  for (int i=0; i<10; i++) {
    print("iter: $i");
  }

  for (int i=1; i<10; i++) {
    for (int j=1; j<10; j++) {
      stdout.write("${i*j} ");
    }
    print("");
  }

  // euclid gcd algorithm
  int x = 27463;
  int y = 16099;
  stdout.write("$xと$yの最大公約数: ");
  while (x != y) {
    if (x > y) {
      x -= y;
    } else if (x < y) {
      y -= x;
    } else break;
  }
  print(x);
}