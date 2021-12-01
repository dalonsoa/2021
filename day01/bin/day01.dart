import 'dart:io';

/// Find the number of increasing values using a window step.
int increasing(List<int> values, int window) {
  int deeper = 0;

  for (int i = window; i <= values.length - 1; i++) {
    if (values[i] > values[i - window]) {
      deeper++;
    }
  }
  return deeper;
}

void main(List<String> arguments) {
  File file = File('data/input');

  List<int> depth = file.readAsLinesSync().map(int.parse).toList();

  int value = increasing(depth, 1);
  print("Answer to Part 1: $value");

  value = increasing(depth, 3);
  print("Answer to Part 2: $value");
}
