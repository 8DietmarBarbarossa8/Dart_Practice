import 'dart:math';
import 'dart:io';

main() {
  print("######################");
  task1();
  print("######################");
  task2();
  print("######################");
  task3();
  print("######################");
  task4();
  print("######################");
  task5();
  print("######################");
  task6();
  print("######################");
  task7();
  print("######################");
  task8();
  print("######################");
  task9();
  print("######################");
  task10();
  print("######################");
  task11();
  print("######################");
  task12();
  print("######################");
  task13();
  print("######################");
  task14();
  print("######################");
  task15();
  print("######################");
}

task1() {
  double a = 4, b = 6, c = 88, rez;
  rez = (b + sqrt(pow(b, 2) + 4 * a * c)) / 2 * a - pow(a, 3) * c + b;
  print("Result: $rez");
}

task2() {
  double a = 10, b = 20, c = 0, p, s;
  c = sqrt(a * a + b * b);
  p = a + b + c;
  s = 0.5 * a * b;
  print('Perimeter = $p square = $s');
}

task3() {
  double x1 = 0, y1 = 0, x2 = 0, y2 = 0, x3 = 0, y3 = 0;
  double a, b, c;
  double p, p2, s;

  print('Input x1:');
  _dangerousInput(() => x1 = double.parse(stdin.readLineSync()!));

  print('Input y1:');
  _dangerousInput(() => y1 = double.parse(stdin.readLineSync()!));

  print('Input x2:');
  _dangerousInput(() => x2 = double.parse(stdin.readLineSync()!));

  print('Input y2:');
  _dangerousInput(() => y2 = double.parse(stdin.readLineSync()!));

  print('Input x3:');
  _dangerousInput(() => x3 = double.parse(stdin.readLineSync()!));

  print('Input y3:');
  _dangerousInput(() => y3 = double.parse(stdin.readLineSync()!));

  a = sqrt(pow(abs(abs(x1) - abs(x3)), 2) + pow(abs(abs(y1) - abs(y3)), 2));
  b = sqrt(pow(abs(abs(x3) - abs(x2)), 2) + pow(abs(abs(y3) - abs(y2)), 2));
  c = sqrt(pow(abs(abs(x1) - abs(x2)), 2) + pow(abs(abs(y1) - abs(y2)), 2));
  p2 = a + b + c;
  p = p2 / 2;
  s = sqrt(p * (p - a) * (p - b) * (p - c));
  print("$a $b $c");
  print('Perimeter of triangle = $p, square = $s');
}

_dangerousInput(Function function) {
  try {
    function();
    // ignore: empty_catches
  } catch (e) {}
}

double abs(double value) {
  return value > 0 ? value : -value;
}

task4() {
  double skv, stonona_kv, radius_ork, skv2, x;
  skv = 25;
  stonona_kv = sqrt(skv);
  radius_ork = stonona_kv / 2;
  skv2 = 0.5 * radius_ork * 4;
  x = skv / skv2;
  print("x = $x");
}

task5() {
  int x = 2332;
  List<int> mas = [];
  List<String> chStr = x.toString().split('');
  print(chStr.length);
  for (int i = 0; i < chStr.length; i++) {
    mas.add(int.parse(chStr[i]));
  }
  print((mas[0] + mas[1]) == (mas[2] + mas[3]) ? 'TRUE' : 'FALSE');
}

task6() {
  int number = 0, digit = 0;
  print("Input number: ");
  _dangerousInput(() => number = int.parse(stdin.readLineSync()!));
  while (number != 0) {
    digit = number % 10;
    number ~/= 10;
    if (digit % 2 == 0) {
      print("There is a digit!");
      return;
    }
  }
  print("There are no even digits!");
}

task7() {
  int a = 0, b = 0, c = 0, d = 0, count = 0;
  print('Input a:');
  _dangerousInput(() => a = int.parse(stdin.readLineSync()!));

  print('Input b:');
  _dangerousInput(() => b = int.parse(stdin.readLineSync()!));

  print('Input c:');
  _dangerousInput(() => c = int.parse(stdin.readLineSync()!));

  print('Input d:');
  _dangerousInput(() => d = int.parse(stdin.readLineSync()!));

  if (a % 2 == 0) count++;
  if (b % 2 == 0) count++;
  if (c % 2 == 0) count++;
  if (d % 2 == 0) count++;

  print(count >= 2 ? 'More two even number' : 'Nope');
}

task8() {
  int number = 0;
  int sum_digit_number = 0;
  int kv_number, kub_number;

  print('Input number: ');
  _dangerousInput(() => number = int.parse(stdin.readLineSync()!));
  kv_number = number * number;
  while (number % 10 != 0) {
    sum_digit_number += number % 10;
    number = number ~/ 10;
  }
  sum_digit_number += number;
  kub_number = pow(sum_digit_number, 3) as int;

  print(kub_number == kv_number ? 'TRUE' : 'FALSE');
}

task9() {
  int n = 0, hour, min, sec;
  _dangerousInput(() => n = int.parse(stdin.readLineSync()!));
  if (n > 86400 || n < 0) {
    print("Incorrect value");
    return;
  }
  hour = n ~/ 3600;
  n = n - hour * 3600;
  min = n ~/ 60;
  n = n - min * 60;
  sec = n;
  print("In $n sec: $hour hour.$min min.$sec sec");
}

task10() {
  double x1 = 0, y1 = 0, x2 = 0, y2 = 0;
  double a, b;

  print('Input x1:');
  _dangerousInput(() => x1 = double.parse(stdin.readLineSync()!));

  print('Input y1:');
  _dangerousInput(() => y1 = double.parse(stdin.readLineSync()!));

  print('Input x2:');
  _dangerousInput(() => x2 = double.parse(stdin.readLineSync()!));

  print('Input y2:');
  _dangerousInput(() => y2 = double.parse(stdin.readLineSync()!));

  a = sqrt(x1 * x1 + y1 * y1);
  b = sqrt(x2 * x2 + y2 * y2);

  print(a < b
      ? 'A is closer'
      : a > b
          ? 'B is closer'
          : 'equals');
}

task11() {
  double a = 0, b = 0, x = 0, y = 0, z = 0;

  print('Input a:');
  _dangerousInput(() => a = double.parse(stdin.readLineSync()!));

  print('Input b:');
  _dangerousInput(() => b = double.parse(stdin.readLineSync()!));

  print('Input x:');
  _dangerousInput(() => x = double.parse(stdin.readLineSync()!));

  print('Input y:');
  _dangerousInput(() => y = double.parse(stdin.readLineSync()!));

  print('Input z:');
  _dangerousInput(() => z = double.parse(stdin.readLineSync()!));

  if (a > x && b > y) {
    print("Okay");
  } else if (a > y && b > z) {
    print("Okay");
  } else if (a > z && b > x) {
    print("Okay");
  } else if (a > y && b > z) {
    print("Okay");
  } else if (a > z && b > y) {
    print("Okay");
  } else {
    print("Not okay");
  }
}

task12() {
  double h = 0, a, b, c, D, x1, x2;
  print('Input h:');
  _dangerousInput(() => h = double.parse(stdin.readLineSync()!));
  a = sqrt((abs(sin(8 * h)) + 17)) / pow(1 - sin(4 * h) * cos(h * h + 18), 2);
  b = 1 - sqrt(3 / (3 + abs(tan(a * h * h) - sin(a * h))));
  c = a * h * h * sin(b * h) + b * pow(h, 3) * cos(a * h);
  D = b * b - 4 * a * c;
  if (D < 0) {
    print("No roots");
  } else if (D == 0) {
    x1 = (-b) / (2 * a);
  } else {
    x1 = (-b - sqrt(D)) / (2 * a);
    x2 = (-b + sqrt(D)) / (2 * a);
    print('x1 and x2: ($x1, $x2)');
  }
}

task13() {
  double x = 0, Fx;
  print('Input x:');
  _dangerousInput(() => x = double.parse(stdin.readLineSync()!));
  Fx = x >= 3 ? -x * x + 3 * x + 9 : 1 / (pow(x, 3) - 6);
  print("F(x) = $Fx");
}

task14() {
  int number = 0;
  int posl_zifra_number;
  int posl_zifra_kv_number;
  print('Input number:');
  _dangerousInput(() => number = int.parse(stdin.readLineSync()!));
  posl_zifra_number = number % 10;
  switch (posl_zifra_number) {
    case 0:
      posl_zifra_kv_number = 0;
      break;
    case 1:
      posl_zifra_kv_number = 1;
      break;
    case 2:
      posl_zifra_kv_number = 4;
      break;
    case 3:
      posl_zifra_kv_number = 9;
      break;
    case 4:
      posl_zifra_kv_number = 6;
      break;
    case 5:
      posl_zifra_kv_number = 5;
      break;
    case 6:
      posl_zifra_kv_number = 6;
      break;
    case 7:
      posl_zifra_kv_number = 9;
      break;
    case 8:
      posl_zifra_kv_number = 4;
      break;
    case 9:
      posl_zifra_kv_number = 1;
      break;
    default:
      print('ERROR!');
      return;
  }
  print('Number square of $number = $posl_zifra_kv_number');
}

task15() {
  int year = 0, month = 0, col_day = 0;
  print('Input year:');
  _dangerousInput(() => year = int.parse(stdin.readLineSync()!));

  print('Input month:');
  _dangerousInput(() => month = int.parse(stdin.readLineSync()!));
  switch (month) {
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
      col_day = 31;
      break;
    case 2:
      if (year % 4 == 0)
        col_day = 29;
      else
        col_day = 28;
      break;
    case 4:
    case 6:
    case 9:
    case 11:
      col_day = 30;
      break;
  }
  print('The count of days: $col_day');
}
