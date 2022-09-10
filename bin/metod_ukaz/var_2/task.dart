import 'dart:math';

import 'package:test/scaffolding.dart';

main() {
  print("###########################");
  print(minInMax(4, 3.5, 6.3, 8.4));
  print(minInMax(3.14, 2, 0.5, 0.03));
  print(minInMax(1, 3, 5, 4));
  print("###########################");
  num a = 0.1, b = 1.6, h = 0.05;
  for (var x = a; x <= b; x += h) {
    print('F($x) = ${f(x)}');
  }
  print("###########################");
  print(reverseNumber(123));
  print("###########################");
  print(getMainDiagonalMatrix(5));
  print("###########################");
}

num minInMax(num a, num b, num c, num d) => max(min(a, b), min(c, d));

num f(num x) => tan(2 * x) - 3;

int reverseNumber(int number) {
  var c = number.toString().split('');
  List<int> digits = [];
  int finalNum = 0;

  for (int i = c.length - 1; i >= 0; i--) {
    int value = int.parse(c[i]);
    digits.add(value);
    finalNum += value * pow(10, i) as int;
  }

  return finalNum;
}

getMainDiagonalMatrix(int n) {
  List<List<int>> matrix = [
    for (int i = 0; i < n; i++) [for (int i = 0; i < n; i++) 0]
  ];

  for (int i = 0; i < n; i++) {
    matrix[i][i] = i;
  }

  return matrix;
}
