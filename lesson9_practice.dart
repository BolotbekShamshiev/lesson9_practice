import 'dart:math';

void main() {
  // showUser('Maugli', 14); // Task 1.1.
  // print(showUser2('Maugli', 14)); // Task 1.2.
  // showList(['raf', 'miki', 'leo', 'don']); // Task 2.1.
  // print(showList2([1, 3, 99, 1001, 2007, 2024])); // Task 2.2.
  // katets(6, 5); // Task 3.1.
  // print(katets2(3, 5)); // Task 3.2.
  // kvadrat(11, 12); // Task 4.1.
  // print(kvadrat2(22, 11)); // Task 4.2.
  piramida(12); // Task 5.1. ???????????????????????????????
  // sravnenie(751481); // Task 6.1.
  // print(sravnenie2(151421)); // Task 6.2.
  // task7(434342); // Task 7.1.
  // print(task72(334342)); // Task 7.2.
  // task8('adfafd'); // Task 8.1.
  // print(task82('gdfafd')); // Task 8.2.
}

/* Task #1.
Функция showUser принимает два параметра. 
Первый параметр имя пользователя, а второй его возраст. 
Внутри функции реализовать вывод на экран данных о пользователе. */

showUser(String name, int age) {
  print('His name is $name and he is $age years old');
}

showUser2(String name2, int age2) {
  return 'His name is $name2 and he is $age2 years old';
}

/* Task #2.
Функция showList принимает массив. 
Внутри функции реализовать вывод на экран первого и последнего элемента массива. */

void showList(List<String> students) {
  print('Первый элемент массива: ${students.first}');
  print('Последний элемент массива: ${students.last}');
}

List<int> showList2(List<int> numbers) {
  List<int> numbers2 = [numbers.first, numbers.last];
  return numbers2;
}

/* Task #3.
Дан прямоугольный треугольник. 
Написать функцию, которая принимает два катета(a,b) и вычисляет гипотенузу. 
Вычислить по теореме Пифагора. */

void katets(double a, double b) {
  double c = sqrt(a * a + b * b);
  print(double.parse(c.toStringAsFixed(2)));
}

double katets2(double a, double b) {
  double c = sqrt(a * a + b * b);
  return double.parse(c.toStringAsFixed(2));
}

/* Task #4.
Нарисовать квадрат из символов. 
Функция принимает два параметра (height и width). 
Пример: *****
		    *****
		    *****
 		    *****                                        */

void kvadrat(int shirina, int vysota) {
  for (int i = 1; i <= vysota; i++) {
    print('*' * shirina);
  }
}

String kvadrat2(int shirina, int vysota) {
  dynamic a = '';
  for (int i = 1; i <= vysota; i++) {
    a += '*' * shirina + '\n';
  }
  return a;
}

/* Task #5.
Нарисовать пирамиду. 
Функция принимает один параметр (height) высота пирамиды
         *
        ***
       *****
      *******
     *********
    ***********
   *************
  *************** 
*/

void piramida(int h) {
  for (int i = h; i > 0; i--) {
    print(' '*i + '*'*(h-(i-1)) + '*'*(h-i));
  }
}

// гугл
// void piramida(int vysota) {
//   for (int i = 0; i < vysota; i++) {
//     for (int j = 0; j < vysota - i - 1; j++) {
//       print(' ');
//     }
//     for (int k = 0; k < 2 * i + 1; k++) {
//       print('*');
//     }
//     print('');
//   }
// }

/* Task #6.
Дана строка из 6-ти цифр. Проверьте, что сумма первых трех цифр равняется 
сумме вторых трех цифр. Если это так - выведите 'да', 
в противном случае выведите 'нет'.
*/

void sravnenie(int numbers) {
  String tekstovoi = numbers.toString();
  int a1 = int.parse(tekstovoi[0]);
  int a2 = int.parse(tekstovoi[1]);
  int a3 = int.parse(tekstovoi[2]);
  int a4 = int.parse(tekstovoi[3]);
  int a5 = int.parse(tekstovoi[4]);
  int a6 = int.parse(tekstovoi[5]);

  if (a1 + a2 + a3 == a4 + a5 + a6) {
    print('Yes');
  } else {
    print('No');
  }
}

String sravnenie2(int numbers) {
  String tekstovoi = numbers.toString();
  int a1 = int.parse(tekstovoi[0]);
  int a2 = int.parse(tekstovoi[1]);
  int a3 = int.parse(tekstovoi[2]);
  int a4 = int.parse(tekstovoi[3]);
  int a5 = int.parse(tekstovoi[4]);
  int a6 = int.parse(tekstovoi[5]);

  String result = '';

  if (a1 + a2 + a3 == a4 + a5 + a6) {
    result = 'Yes';
  } else {
    result = 'No';
  }

  return result;
}

/* Task #7.
Дана строка с цифрами, например, '12345'. 
Проверьте, что первым символом этой строки является цифра 1, 2 или 3. 
Если это так - выведите 'да', в противном случае выведите 'нет'.
*/

void task7(int numbers) {
  String tekstovoi = numbers.toString();
  int a1 = int.parse(tekstovoi[0]);

  if (a1 == 1 || a1 == 2 || a1 == 3) {
    print('Yes');
  } else {
    print('No');
  }
}

String task72(int numbers) {
  String tekstovoi = numbers.toString();
  int a1 = int.parse(tekstovoi[0]);

  String result = '';

  if (a1 == 1 || a1 == 2 || a1 == 3) {
    result = 'Yes';
  } else {
    result = 'No';
  }
  return result;
}

/* Task #8.
Дана строка, состоящая из символов, например, 'abcde'. 
Проверьте, что первым символом этой строки является буква 'a'. 
Если это так - выведите 'да', в противном случае выведите 'нет'.
*/

void task8(String word) {
  String a1 = word.substring(0, 1);

  if (a1 == 'a') {
    print('Yes');
  } else {
    print('No');
  }
}

String task82(String word) {
  String a1 = word.substring(0, 1);
  String result = '';

  if (a1 == 'a') {
    result = 'Yes';
  } else {
    result = 'No';
  }
  return result;
}
