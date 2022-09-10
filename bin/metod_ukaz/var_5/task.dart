import 'dart:math';

import 'package:test/scaffolding.dart';

findABC(double x1, double y1, double x2, double y2, double x3, double y3) {
  if (x3 / x2 == y3 / y2 && x2 / x1 == y2 / y1) {
    print('Yes, they in one line!');
  } else {
    num ab = pow(pow(x2 - x1, 2) + pow(y2 - y1, 2), 1.0 / 2);
    num bc = pow(pow(x3 - x2, 2) + pow(y3 - y2, 2), 1.0 / 2);
    num ac = pow(pow(x1 - x3, 2) + pow(y1 - y3, 2), 1.0 / 2);

    num result = (pow(ab, 2) + pow(bc, 2) - pow(ac, 2)) / (2 * ab * bc);
    print("<ABC = ${acos(result)}");
  }
}

num f(num x) => pow(sin(x), 2) - cos(2 * x);

void findFriendNumbers(int n) {
  for (int i = 0; i < n; i++)
    // ignore: curly_braces_in_flow_control_structures
    for (int j = i + 1; j < n; j++) {
      if (sfn(i) == j && sfn(j) == i) {
        print('i = $i and j = $j');
      }
    }
}

int sfn(int n) {
  int result = 1;

  for (int i = 2; i < n; i++) {
    if (n % i == 0) result += i;
  }

  return result;
}

void createAndPrintMatrixN(int n) {
  List<List<int>> matrix = [
    for (int i = 0; i < n; i++) [for (int i = 0; i < n; i++) i]
  ];

  for (int i = 0; i < n; i++)
    // ignore: curly_braces_in_flow_control_structures
    for (int j = 0; j < n; j++) {
      matrix[i][j] = pow(j + 1, i + 1) as int;
    }

  print(matrix);
}
