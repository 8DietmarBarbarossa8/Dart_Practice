// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:math';

void method(double a, double b) {
  print('a = $a b = $b');
  if ((a < 0) ^ (b < 0) || (a > 0) ^ (b > 0)) {
    double x = pow(-b / a, 0.5) as double;
    print("Xo = 0 and X = $x");
  } else
    print("Не имеет решение, кроме Xo = 0!");
}

num f(num x) => 0.5 * sin(x / 4) + 1;

void method3(int n) {
  for (int i = 1; i <= n; i++)
    if (isSimple(i) && isBinaryPalindrome(i))print(i);
}

isSimple(int n) {
  if (n % 2 == 0 || n <= 1) return false;

  for (int i = 2; i < n; i++) if (n % i == 0) return false;

  return true;
}

isBinaryPalindrome(int n) {
  int two = 0, bin = 2;
  while (n > bin) {
    two++;
    bin *= 2;
  }

  return n == pow(2, two) - 1 ||
      n == pow(2, two) + 1 ||
      n == bin - 1 ||
      n == bin + 1;
}

method4(int size, double a, double inc) {
  var matrix = [
    for (int i = 0; i < size; i++) [for (int i = 0; i < size; i++) i]
  ];

  for (int i = 0; i < size; i++) {
    double a1 = a;

    for (int j = 0; j < size; j++) {
      matrix[i][j] = a1 as int;
      a1 += inc;
    }

    int I = i;
    while (I > 0) {
      for (int q = 1; q < size; q++) {
        double buf = matrix[i][q] as double;
        matrix[i][q] = matrix[i][q - 1];
        matrix[i][q - 1] = buf as int;
      }

      I--;
    }
  }

  for (int i = 0; i < size; i++) {
    for (int j = 0; j < size; j++) {
      print(matrix[i][j]);
    }
    print('');
  }
}
