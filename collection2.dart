void main() {
  const bananas = 5;
  const apples = 6;
  const grains = {
    'pasta': '500g',
    'rice': '1000g',
  };
  const addGrains = true;
  var shoppingList = {
    if (bananas > 0) 'bananas': bananas,
    if (apples > 0) 'apples': apples,
    if (addGrains) ...grains,
  };

  print(shoppingList);

  // COPYING COLLECTION
  final list = [1, 2, 3];
  final copy1 = list;
  // only the reference is copied, not the actual values
  copy1[0] = 0;
  final copy2 = [...list]; // copy all values with the spread operator
  copy2[2] = 4;
  print('list: $list');
  print('copy1: $copy1');
  print('copy2: $copy2');

  // NULL
  int x = 42;
  int? sign;
  if (x >= 0) {
    sign = 1;
  }else {
    sign = -1;
  }
  print(sign);

  int? maybeValue;
  if (x > 0) {
    maybeValue = x;
  }
  // assign value to maybeValue is it's empty
  // maybeValue ??= 0;
  int value = maybeValue!;
  // int value1 = maybeValue ?? 0;
  print(value);

  const cities = <String?>['London', 'Paris', null];
  for (var city in cities) {
    // if (city != null) {
    //   print(city.toUpperCase());
    // }
    print(city?.toUpperCase());
  }
}
