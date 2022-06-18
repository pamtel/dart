void main() {
  sayHi();
  const name = 'Andrea';
  const age = 36;
  details(name, age);
  const name1 = 'Pamela';
  const age1 = 26;
  details(name1, age1);
  details('Tony', 14);
  final Person = describe(name: 'Taiwo', age: 37);
  print(Person);
  Sum([]);
  Sum([1, 2]);
  Sum([1, 2, 3, 4]);

  // Anonymous Function
  final sayHello = (String name) => 'Hi, $name';
  print(sayHello('Helen'));
}

void sayHi() {
  print('Hi');
  print('Welcome');
}

void details(String name, int age) {
  print('My name is $name and I am $age years old');
}

// Function that returns
String describe({required String name, required int age}) {
  return 'My name is $name and I am $age years old';
}

Sum(List<int> array) {
  var sumTotal = 0;
  for(var list in array) {
    sumTotal += list;
  };
  return print(sumTotal);
}