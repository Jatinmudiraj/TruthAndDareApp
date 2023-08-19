import 'dart:io';

void list() {
  int? n = int.parse(stdin.readLineSync()!);
  print("Value of n: $n and run time type: ${n.runtimeType} ");
  List<int> list1 = [];
  for (int i = 0; i < n; i++) {
    list1.insert(i, int.parse(stdin.readLineSync()!));
  }
}