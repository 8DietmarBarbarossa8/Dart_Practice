import 'dart:math';

import 'package:test/scaffolding.dart';

main() {
  print("###########################");
  print(getRes3Num(1, 2, 3, 4));
  print("###########################");
  num a = 0.1, b = 1.6, h = 0.05;
  for (var x = a; x <= b; x += h) {
    print('F($x) = ${f(x)}');
  }
  print("###########################");
  print(getSumOfDigits(12342));
  print("###########################");
  print(createArrayWithKN(5, 3));
  print("###########################");
}

num getRes3Num(num a, num b, num c, num d) => d == a
    ? a
    : d == b
        ? b
        : d == c
            ? c
            : max(d - a, max(d - b, d - c));

num f(num x) => -cos(2 * x);

createArrayWithKN(int k, int n) {
  List<int> arr = [for (int i = 0; i < k + 1; i++) i];
  int c = 0;
  for (int i = 1; i < n; i++) {
    if (getSumOfDigits(i) == k) {
      arr[c++] = i;
    }
  }
  return arr;
}

int getSumOfDigits(int n) {
  int sum = 0, number = n;
  while (number > 0) {
    sum += number % 10;
    number ~/= 10;
  }
  return sum;
}

formMatrix(int n) {
  List<List<int>> matrix = [
    for (int i = 0; i < n; i++) [for (int i = 0; i < n; i++) i]
  ];
  for (int i = 0; i < matrix.length; i++)
    // ignore: curly_braces_in_flow_control_structures
    for (int j = 0; j < matrix[i].length; j++) {
      matrix[i][j] = (j + 1) * (i + 1);
    }
  return matrix;
}
