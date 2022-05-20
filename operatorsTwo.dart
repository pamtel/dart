void main() {
  // ARITHMETIC OPERATORS
  print(5 + 2);
  print(5 - 2);
  print(5 * 2);
  print(5 / 2);
  print(5 ~/ 2);
  print(5 % 2);

  int x = 5;
  x = x + 2;
  x %= 2;
  print(x);
  print((10 - 2) * 3);

  double tempFarenheit = 86;
  double temperature = (tempFarenheit - 32) / 1.8;
  print('${tempFarenheit.round()}F = ${temperature.round()}C');

  // INCREMENT AND DECREMENT
  int s = 1;
  int r = s++;
  int o = --r;
  print('$s, $r, $o');

  // LOGICAL AND RELATIONAL 
  print(5 < 2);
  print(5 > 2);
  print(5 >= 2);
  print(5 != 2);
  print(5 < 2 || 5 < 7);
  print(5 < 2 && 5 < 7);
  print(!(5 < 2));

  String email = 'example@email.com';
  print(email.isNotEmpty && email.contains('@'));

  // TENARY ACCESS
  int age = 16;
  String type = age > 16 ? 'child' : 'adult';
  print(type);
}