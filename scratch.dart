import 'dart:io';

// * Async Programing Demonstration
void main() {
  performTasks();
}

void performTasks() {
  task1();
  task2();
  task3();
}

void task1() {
  String result = 'task 1 data';
  print(result);
}

// ? Async Method
void task2() {
  Duration threeSeconds = Duration(seconds: 3);
  Future.delayed(threeSeconds, () {
    String result = 'task 2 data';
    print(result);
  });
}

void task3() {
  String result = 'task 3 data';
  print(result);
}
