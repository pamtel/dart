// import 'dart:html';
import 'dart:io';

main() {
    stdout.writeln('What is your name?');
    var name = stdin.readLineSync();
    print('My name is $name');

   /*
    dataType:
      int
      double
      String
      bool
      dynmaic
  */
  
  int amount1 = 100;
  var amount2 = 200;
  print('Amount1: $amount1 | Amount2: $amount2 \n');

  double dAmount1 = 100.11;
  var dAmount2 = 200.22;
  print('dAmount1: $dAmount1 | dAmount2: $dAmount2 \n');

  String name1 = 'Pamela';
  var name2 = 'Ahiante';
  print('My name is $name1 $name2'.toUpperCase());

  bool isItTrue1 = true;
  var isItTrue2 = false;
  print('isItTrue1: $isItTrue1 | isItTrue2: $isItTrue2 \n');

  dynamic weakVariable = 100;
  print('weakVariable 1: $weakVariable ');

  weakVariable = 'Dart Programming';
  print('weakVariable 2: $weakVariable ');

  var s1 = 'Single quote work well for string literals.';
  var s2 = "Double quote works well as well.";
  var s3 = 'It\s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  print(s1);
  print(s2);
  print(s3);
  print(s4);
  print('');

  // RAW STRING STRING
  var s = r'In a raw string, not even \n gets special treatment.';
  print(s);

  // MULTILINE STRING
  var s5 = '''
  You can create 
  multi line strings like this one.
''';
  var s6 = """ This is 
  also a multi line string """;

  print(s5);
  print(s6);

  // Convert string to number with PARSE
  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // Convert number to string with toString()
  // String -> int
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // String -> double 
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  // USING CONST IN DART
  const aConstNum = 0;
  const aConstBoolean = true;
  const aConstString = 'a constant string';

  print(aConstNum);
  print(aConstBoolean);
  print(aConstString);

  print(aConstNum.runtimeType);
  print(aConstBoolean.runtimeType);
  print(aConstString.runtimeType);

  // CONTAINS CHECKS IF IT'S TRUE OR FALSE
  String lovePizza = 'I love Pizza';
  bool containsPizza = lovePizza.contains('Pizza');
  print(containsPizza);
}

/*
how to add comments in dart:
// In-line comments

/*
Block comments
Multiple line of code
*/

/// Documentation
*/

/* 
  Strongly Typed Language: The type of variable is known at compile type.
  For example: Java, C++, Swift

  Dynamic Typed Language: The type of variable is known at run type.
  For example: JavaScript, Python, Rubby
*/