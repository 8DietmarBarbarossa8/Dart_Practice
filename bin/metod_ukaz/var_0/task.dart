import 'dart:math';

import 'package:test/scaffolding.dart';

main() {
  print("###########################");
  print(max(4, 3.5, 6.3));
  print(max(3.14, 2, 0.5));
  print(max(3, 5, 4));
  print("###########################");
  num a = 0.1, b = 1.6, h = 0.05;
  for (var x = a; x <= b; x += h) {
    print('F($x) = ${f(x)}');
  }
  print("###########################");
  List arr = split(1092837465);
  print(arr);
  print("###########################");
  List<List<double>> matrix = formSquareMatrixAndGetPositive(5);
  int pos_count = getPositiveElementsOfMatrix(matrix);
  print("Amount of positive: $pos_count");
  print("###########################");
}

num max(num a, num b, num c) => a > b && a > c
    ? a
    : b > c
        ? b
        : c;

num f(num x) => x / cos(x);

List<int> split(int num) {
  String s = num.toString();
  List<String> c = s.split('');
  List<int> dig = [];
  for (int i = 0; i < c.length; i++) {
    dig.add(int.parse(c[i]));
  }
  return dig;
}

List<List<double>> formSquareMatrixAndGetPositive(int n) {
  List<List<double>> matrix = [];
  for (int i = 0; i < n; i++) {
    List<double> list = [];
    for (int j = 0; j < n; j++) {
      list.add(sin((i * i - j * j) / n));
    }
    matrix.add(list);
  }

  return matrix;
}

int getPositiveElementsOfMatrix(List<List<double>> matrix) {
  int sum = 0;
  for (var doubles in matrix) {
    for (int j = 0; j < matrix.length; j++) {
      if (doubles[j] > 0) sum++;
    }
  }

  return sum;
}
