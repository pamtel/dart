enum Medal { gold, silver, bronze, noMedal }
enum Operation { plus, minus, multiply, divide }
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

  for(var i = 1; i <= 15; i++){
    if(i % 3 == 0 && i % 5 == 0) {
      print('fizz buzz');
    }else if(i % 3 == 0) {
      print('fizz');
    }else if(i % 5 == 0) {
      print('buzz');
    }else {
      print(i);
    }
  }


  // Enum
  const medal = Medal.silver;
  print(medal);
  print(medal.name);
  print(Medal.values);
  print(Medal.values.byName('gold'));

  switch(medal) {
    case Medal.gold: 
      print('gold medal');
      break;
    case Medal.silver:  
      print('silver medal');
      break;
    case Medal.bronze: 
      print('bronze medal');
      break;
    case Medal.noMedal:
      print('Try again');
      break;
  }

  // Calculator
  const a = 4;
  const b = 2;
  const op = Operation.divide;
  switch(op) {
    case Operation.plus:
      print('$a + $b = ${a + b}');
      break;
    case Operation.minus:
      print('$a - $b = ${a - b}');
      break;
    case Operation.multiply:
      print('$a * $b = ${a * b}');
      break;
    case Operation.divide:
      print('$a / $b = ${a / b}');
      break;
  }

}