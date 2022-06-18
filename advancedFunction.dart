typedef Greet = String Function(String);

// typedef String Greet(String name);

// anonymous functions
String sayHi(String name) => 'Hi, $name';

String sayBonjur(String name) => 'bonjur, $name';

String sayHolla(String name) => 'holla, $name';

void main() {
  welcome(sayHolla, 'Helen');

  const multiplier = 10;
  const list = [1, 2, 3, 4];
  // const decimal = [1.0, 2.0, 3.0, 4.0];

  // closures function
  final result = list.map((x) {
    return x * multiplier;
  });
  print(result);

  // forEach
  list.forEach((x) => print(x));
  // OR
  list.forEach(print);

  // map, iterable and toList
  final List<int> double = list.map((value) => value * 2).toList();
  print(double);
  final doubles = transform<int, int>(list, (x) => x * 2);
  // final rounded = transform<double, int>(decimal, (x) => x.round(2));
  print(doubles);

  // filter and find item in a collection using 'where' and 'firstWhere' methods
  final even = list.where((value) => value % 2 == 0);
  print(even);
  final value = list.firstWhere((x) => x == 3, orElse: () => -1);
  print(value);

  var fruits = ['apple', 'orange', 'pawpaw'];
  var items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];
  final odds = where<int>(items, (value) => value % 2 == 1);
  print(odds);
  final selected =
      firstWhere<int>(list, (value) => value == 2, orElse: () => -1);
  final fruit = firstWhere<String>(fruits, (value) => value == 'banana',
      orElse: () => 'No such fruit');
  print(selected);
  print(fruit);

  // Reduce method is use to combine all items in a list to produce a single result without using a for loop
  final sum = list.reduce(((value, element) => value + element));
  print(sum);

  const emails = [
    'abc@abc.com',
    'me@example.co.uk',
    'john@gmail.com',
    'katty@yahoo.com'
  ];
  const knownDomains = ['gmail.com', 'yahoo.com'];
  final unKnownDomains = getUnknownDomains(emails, knownDomains);
  print(unKnownDomains);
}

// combining functional operators
Iterable<String> getUnknownDomains(
        List<String> emails, List<String> knownDomains) => emails
        .map((email) => email.split('@').last)
        .where((domain) => !knownDomains.contains(domain));

// Where Function
List<T> where<T>(List<T> items, bool Function(T) f) {
  var results = <T>[];
  for (var item in items) {
    if (f(item)) {
      results.add(item);
    }
  }
  return results;
}

// FirstWhere Function
T firstWhere<T>(List<T> items, bool Function(T) f,
    {required T Function() orElse}) {
  for (var item in items) {
    if (f(item)) {
      return item;
    }
  }
  return orElse();
}

// resuable functions and generic
List<R> transform<T, R>(List<T> items, R Function(T) f) {
  var result = <R>[];
  for (var x in items) {
    result.add(f(x));
  }
  return result;
}

List<int> doubleItems(List<int> items) {
  var result = <int>[];
  for (var x in items) {
    result.add(x * 2);
  }
  print(result);
  return result;
}

// functions as first class objects
void welcome(Greet greet, String name) {
  print(greet(name));
  print('Welcome to this course');
}
