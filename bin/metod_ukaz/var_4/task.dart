import 'dart:math';

import 'package:test/scaffolding.dart';

isParralelogram(double x1, double y1, double x2, double y2, double x3,
        double y3, double x4, double y4) =>
    (y1 - y4 == y2 - y3) && (x2 - x1 == x3 - x4);

num f(num x) => 7 * pow(sin(x), 2) - 0.5 * cos(x);

void printMatrixWMN(List<List<int>> A, List<List<int>> B, List<List<int>> C) {
  int a = maxABS(A);
  int b = maxABS(B);
  int c = maxABS(C);
  int maximum = max(max(a, b), c);

  if (a == maximum) {
    print(A);
  }
  if (b == maximum) {
    print(B);
  }
  if (c == maximum) {
    print(C);
  }
}

int maxABS(List<List<int>> matrix) {
  int max_abs = matrix[0][0];
  for (var ints in matrix)
    // ignore: curly_braces_in_flow_control_structures
    for (int anInt in ints) {
      if (max_abs < abs(anInt)) {
        max_abs = anInt;
      }
    }

  return max_abs;
}

int abs(int n) => n >= 0 ? n : -n;

void createAndPrintMatrixN(int n) {
  var matrix = [
    for (int i = 0; i < n; i++) [for (int i = 0; i < n; i++) i]
  ];

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      matrix[i][j] = pow(j + 1, i) as int;
    }
  }

  print(matrix);
}
