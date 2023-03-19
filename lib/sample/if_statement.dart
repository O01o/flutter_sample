void main(List<String> args) {
  int a = 2;
  int b = 3;
  int c = 3;

  print("${a == b}");
  print("${b == c}");
  print("${a == c}");
  
  if (a == b) {
    print("a == b is true");
  } else { // a != b
    print("a == b is false");
  }

  if (a < b) {
    print("a is smaller than b");
  } else { // a >= b
    print("a equal b or more");
  }
  
  if (a == b && b == c) {
    print("辺a,b,cは正三角形");
  } else if (a == b || b == c || a == c) {
    print("辺a,b,cは二等辺三角形");
  } else {
    print("辺a,b,cは不等辺三角形");
  }

  return;
}