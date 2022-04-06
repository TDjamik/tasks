//task 1
import 'dart:io';
void main() {
  bool con = true;
  int exit;
  do {
    stdout.writeln("Write number to digit revers:");
    int a = int.parse(stdin.readLineSync()!);
    int res = a;
    int sum = 0;
    int count = 0;
    if (a < 0) {
      res = res.abs();
    }
    while (res > 0) {
      sum = res % 10;
      count = (count + sum) * 10;
      res = res ~/ 10;
    }
    if (a < 0) {
      count = -count;
    }
    stdout.writeln("$a reversed = ${count ~/ 10}");
    stdout.writeln("To continue write 0: ");
    stdout.writeln("To exit write 1: ");
    exit = int.parse(stdin.readLineSync()!);
    if (exit == 1) {
      con = false;
    } else {
      con = true;
    }
  } while (con);
}