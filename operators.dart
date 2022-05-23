class Num {
  int numb = 10;
}

void main() {
  int num = 10 + 22;
  num = num - 2;
  print(num);

  num = num % 5;
  print(num);

  // relational ==, !=, >=, <=
  if (num == 0) {
    print('zero');
  };

  num = 100;
  num *= 2; // num = num * 2;
  print(num);

  // unary operators
  ++num; // pre-increment
  num++; // post-increment
  num += 1;
  num -= 1;
  print(num);

  // logical && and logical ||
  if (num > 200 && num < 203) {
    print('200 to 202');
  }

  // != Not Equal
  if (num != 100) {
    print('num is not equal to 100');
  }

  // NULL AWARE OPERATORS
  // (?.), (??), (??=)
  var n = Num();
  int number;

  // if (n != null) {
    number = n.numb;
  // }
  print(number);

  var m;
  // if (n != null) {
    number = m?.numb ?? 0;
  // }
  print(number);

  // TENARY operators
  int x = 101;
  var result = x % 2 == 0 ? 'Even' : 'Odd';
  print(result);

  // Type Test
  var y = 100;
  // ignore: unnecessary_type_check
  if (y is int) {
    print('integer');
  }

  // CONDITIONAL STATEMENTS
  int alp = 91;
  if ( alp % 2 == 0) {
    print('Even');
  }else if ( alp % 3 == 0) {
    print('Odd');
  }else {
    print('Confused');
  }

  // SWITCH STATEMENTS
   int digit = 0;

   switch(digit) {
    case 0:
      print('Even');
      break;
    case 1:
      print('Odd');
      break;
    default:
      print('Confused');
   }
  
  // LOOP
  // Standard for loop 
  for (var i = 1; i <= 3; ++i){
    print(i);
  }
  // Standard for IN loop
  var array = ['a', 'b', 'c'];
  for (var a in array){
    print(a);
  }
  // another example in standard for loop 
  for (var i = 0; i < array.length; ++i){
    print(array[i]);
  }
  // For Each Loop
  array.forEach((n) => print(n));
  // While Loop
  int loop = 4;
  while (loop > 0) {
    print(loop);
    loop -= 1;
  }
  // adding continue to loop
  for (var i = 1; i <= 10; ++i){
    if (i % 2 == 0) continue;
    print('Odd: $i');
  }

  // COLLECTION
  // List means Array
  var items = ['Jack', 'Jill', 2, 3];
  print(items.length);
  for (var n in items) {
    print(n);
  }
  // adding types 
  List <String> names = ['Jack', 'Jill'];
  names[1] = 'Mark';
  print(names.length);
  for (var n in names) {
    print(n);
  }

  // CRATE MAP
  var gift = {
    // key:    value
      'first': 'day',
      'second': 'month',
      'third': 'year'
  };
  print(gift['first']);

  var gift2 = Map();
  gift2[2] = 'yyyyy';
  print(gift2[2]);

  showOutput(square(2));
  showOutput(square(2.5));

  // Anonymous function
  var list = ['apple', 'orange', 'banana'];
  list.forEach((items) => print(items));
  print(sum(2, 6));

  // CONVERSION BTW TYPES
  int w = 10;
  // ignore: unused_local_variable
  double o = w.toDouble();
  // ignore: unused_local_variable
  double p = 20;
  int q = 40.6.round();
  print(q);
}

  // FUNCTION
  dynamic square(var num) {
    return num * num;
  }
  // arrow function
  void showOutput(msg) => print(msg);
  dynamic sum(var num1, var num2) => num1 + num2;
  
