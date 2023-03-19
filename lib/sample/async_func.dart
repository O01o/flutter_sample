import 'dart:async';

Future<String> delayer(int seconds) async {
  await Future.delayed(Duration(seconds: seconds));
  return "print delay $seconds";
}

Stream<int> timerCounter(int maxTimes) async* {
  int count = 0;
  while(count < maxTimes) {
    count++;
    await Future.delayed(const Duration(seconds: 1));
    yield count;
  }
}

int plus(a, b) {
  return a + b;
}
void main(List<String> args) async {
  print(await delayer(3));
  // timerCounter(4);
  int a = 2;
  int b = 3;
  print("${plus(a, b)}");

  return;
}