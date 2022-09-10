import 'dart:math';

method1(double a, double b, double c) {
  if (a > b && b > c) {
    a *= 2;
    b *= 2;
    c *= 2;

    print('A = $a B = $b C = $c');
  } else {
    int x = a as int;
    int y = b as int;
    int z = c as int;

    print('X = $x Y = $y Z = $z');
  }
}

num f(num x) => 0.5 * 1 / tan(x / 4) + 4;

void method3(int n) {
  for (int i = 0; i < n - 2; i++) {
    if (isSimpleAndTwins(n + i)) {
      print('${n + i} ${n + i + 2}');
    }
  }
}

bool isSimpleAndTwins(int n) {
  if (n % 2 == 0) {
    return false;
  }

  for (int i = 3; i < n; i += 2) {
    if (n % i == 0 || (n + 2) % i == 0) {
      return false;
    }
  }

  return true;
}

void method4(int n) {
  int k = 1, j = 0, s = 1;
  List<List<int>> matrix = [
    for (int i = 0; i < n; i++) [for (int i = 0; i < n; i++) i]
  ];

  while (j < n * n) {
    for (int i = s - 1; i < n - (s - 1); ++i) {
      matrix[s - 1][i] = k++;
      j++;
    }

    for (int i = s; i < n - (s - 1); ++i) {
      matrix[i][n - s] = k++;
      j++;
    }

    for (int i = n - (s + 1); i >= s - 1; i--) {
      matrix[n - s][i] = k++;
      j++;
    }

    for (int i = n - (s + 1); i >= s; i--) {
      matrix[i][s - 1] = k++;
      j++;
    }

    s++;
  }

  for (var arr in matrix) {
    for (var a in arr) {
      print(a);
    }
  }
}
