import 'dart:math';

void method(double a, double b, double c) {
  double ab = abs(a - b), ac = abs(a - c);
  print(ac < ab
      ? "C"
      : ac == ab
          ? "B and C"
          : "B");
}

abs(num a) => a >= a ? a : -a;

num f(num x) => pow(sin(x), 2) - cos(2 * x);

void method3(int k) {
  for (int i = 1; i <= k; i++) {
    int n = 0, buffer = i;
    while (buffer > 0) {
      n++;
      buffer ~/= 10;
    }

    int sum = 0, buffer2 = i, digit;
    while (buffer2 > 0) {
      digit = buffer2 % 10;
      sum += pow(digit, n) as int;
      buffer2 ~/= 10;
    }

    print('$i ${i == sum ? " - Strong arm!" : " - Common"}');
  }
}

void method4(int n) {
  var matrix = [
    for (int i = 0; i < n; i++) [for (int i = 0; i < n; i++) i]
  ];
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      if (i == j || i + j == n - 1) matrix[i][j] = 1;
      print('${matrix[i][j]}\t');
    }
    print('');
  }
}
