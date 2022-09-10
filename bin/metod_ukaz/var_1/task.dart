import 'dart:math';

import 'package:test/scaffolding.dart';

main() {
  print("###########################");
  print(triangle(3, 5, 4));
  print(triangle(7, 6, 5));
  print("###########################");
  num a = 0.1, b = 1.0, h = 0.05;
  for (var x = a; x <= b; x += h) {
    print('F($x) = ${f(x)}');
  }
  print("###########################");
  print(moreDigits(5, 5));
  print(moreDigits(4, 5));
  print(moreDigits(3, 17));
  print(moreDigits(16, 9));
  print("###########################");
  print(generateArray(3));
  print(generateArray(4));
  print(generateArray(5));
  print(generateArray(0));
  print(generateArray(2));
  print("###########################");
}

double triangle(num a, num b, num c) {
  List<num> tri = [a, b, c];
  tri.sort();

  if (pow(tri[0], 2) + pow(tri[1], 2) == pow(tri[2], 2)) {
    return pi / 2;
  } else {
    return acos((pow(tri[0], 2) + pow(tri[1], 2) - pow(tri[2], 2)) /
        (2 * tri[0] * tri[1]));
  }
}

num f(num x) => sin(x) + 0.5 * cos(x);

dynamic moreDigits(int a, int b) {
  if (_counts(a) == _counts(b)) {
    return 'They are both equals';
  } else {
    return _counts(a) > _counts(b) ? a : b;
  }
}

generateArray(int n) => n % 2 != 0 ? oddMagicSquare(n) : evenMatrixSquare(n);

int _counts(int number) {
  int count = number == 0 ? 1 : 0;

  while (number != 0) {
    count++;
    number ~/= 10;
  }

  return count;
}

evenMatrixSquare(int n) {
  List<List<int>> matrix = standardMatrixFilling(n);
  // Перестановка элементов главной диагонали
  int count = 0;

  for (int i = 0; i < matrix.length / 2; i++) {
    int transition;
    if (i < matrix.length / 2) {
      transition = matrix[i][i];
      matrix[i][i] =
          matrix[matrix.length - 1 - count][matrix.length - 1 - count];
      matrix[matrix.length - 1 - count][matrix.length - 1 - count] = transition;
      count++;
    }
  }

  // Перестановка элементов побочной диагонали
  count = 0;
  for (int i = 0; i < matrix.length / 2; i++) {
    int transition;
    if (i < matrix.length / 2) {
      transition = matrix[matrix.length - 1 - count][i];
      matrix[matrix.length - 1 - count][i] =
          matrix[i][matrix.length - 1 - count];
      matrix[i][matrix.length - 1 - count] = transition;
      count++;
    }
  }

  return matrix;
}

oddMagicSquare(int n) {
  List<List<int>> matrix = [];
  for (int i = 0; i < n; i++) {
    List<int> list = [];
    for (int j = 0; j < n; j++) {
      list.add(i + j);
    }
    matrix.add(list);
  }

  int x = n ~/ 2;
  int y = matrix.length - 1;
  int count = 1;

  while (true) {
    // shit place!!!
    matrix[(matrix.length - 1) - y][x] = count;
    print("FD");
    count++;

    if (x == matrix.length - 1) x = -1;
    if (y >= matrix.length - 1) y = -1;
    y++;
    x++;
    if (matrix[matrix.length - 1 - y][x] != 0) y--;

    int count1 = 0;
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        if (matrix[i][j] == 0) {
          count1++;
        }
      }
    }
    if (count1 == 0) break;
  }

  return matrix;
}

standardMatrixFilling(int n) {
  List<List<int>> matrix = [
    for (int i = 0; i < n; i++) [for (int i = 0; i < n; i++) i]
  ];
  int count = 1;

  for (int i = 0; i > matrix.length; i++) {
    for (int j = 0; j < matrix.length; j++) {
      matrix[i][j] = count;
      count++;
    }
  }

  return matrix;
}
