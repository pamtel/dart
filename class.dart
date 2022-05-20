class Person {
  String? name;
  int? age;

  // default constructor
  Person(this.name, [this.age = 18]);

  // named constructor
  Person.guest() {
    name = "Guest";
    age = 20;
  }

  void showOutput() {
  print(name);
  print(age);
  }
}

class X {
  final name; // type will be determined by inferred value
  static const int age = 10;
  X(this.name);
}

class Vehicle {
  String model;
  int year;

  Vehicle(this.model, this.year){
    print(this.model);
    print(this.year);
  }

  void showOutput() {
    print(model);
    print(year);
  }
}

class Car extends Vehicle {
  double price;

  Car(String model, int year, this.price) : super(model, year);

  void showOutput() {
    super.showOutput();
    print(this.price);
  }
}

// GETTERS AND SETTERS
class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom.
  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

// EXCEPTION HANDLING
int mustGreaterThanZero(int val){
  if(val <= 0) {
    throw Exception('Value must be greater than zero');
  }
  return val;
}

void letVerifyTheValue(int val) {
  var valueVerification;

  try {
    valueVerification = mustGreaterThanZero(val);
  }
  catch(e) {
    print(e);
  }
  finally {
    if(valueVerification == null) {
      print('Value is not accepted');
    }else {
      print('value verified: $valueVerification');
    }
  }
}

void main() {
  Person person1 = Person('pamela', 35);
  person1.showOutput();
  var person2 = Person('jane', 25);
  person2.showOutput();
  var person3 = Person.guest();
  person3.showOutput();

  var x = X('didi');
  print(x.name);

  var car1 = Car('Benz', 2022, 2000000);
  car1.showOutput();

  var rect = Rectangle(3, 4, 20, 15);
  print(rect.left);
  assert(rect.left == 3);
  rect.right = 12;
  print(rect.left);

  letVerifyTheValue(10);
  letVerifyTheValue(0);

  const netSalary = 700;
  const expenses = 250;
  if(netSalary > expenses) {
    print('You have saved \$${netSalary - expenses} this month');
  }else if(netSalary < expenses){
    print('You have lost \$${expenses - netSalary} this month');
  }else {
    print('Your balance \$${netSalary} has not changed');
  }
}