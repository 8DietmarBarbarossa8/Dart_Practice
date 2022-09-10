import 'dart:math';

void method(double a, double b, double c) {
  if (a + b > c && a + c > b && b + c > a) {
    double p = (a + b + c) / 2;
    double s = pow(p * (p - a) * (p - b) * (p - c), 0.5) as double;
    print("Triangle square: $s");
  } else {
    print("It's not triangle");
  }
}

num f(num x) => 2 * cos(pow(x, 0.5) + 0.5);

void method3(int k) {
  for (int i = 1000; i < 10000; i++) {
    int a = i / 1000 as int,
        b = i / 100 % 10 as int,
        c = i / 10 % 10 as int,
        d = i % 10;
    bool A = a != b && a != c && a != d && b != c && b != d && c != d;
    bool B = a * b - c * d == a + b + c + d;

    if (A && B) {
      print(i);
    }
  }
}

void method4(int n) {
  var matrix = [
    for (int i = 0; i < n; i++) [for (int i = 0; i < n; i++) i]
  ];
  for (int i = 0; i < matrix.length; i++)
    // ignore: curly_braces_in_flow_control_structures
    for (int j = i; j < matrix[i].length; j++) {
      matrix[i][j] = j - i + 1;
    }

  for (var ints in matrix) {
    for (int anInt in ints) {
      print('$anInt\t');
    }
    print('');
  }
}
