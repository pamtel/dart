void main() {
  // using list in an array
  // List<String> cities = ['Rome', 'Japanese', 'Korean'];
  var cities = <String>['Rome', 'Japanese', 'Korean'];
  // add: add more items in the array
  cities.add('Tokyo');
  // insert: place item is a specific place in the array and it takes two parameters
  cities.insert(1, 'London');
  // removeAt: This remove an item from the array
  cities.removeAt(2);

  // contains: This check if an item is in the array... It's returns a boolean
  print(cities.contains('London'));
  // indexOf: This checks the index of the item in the array
  print(cities.indexOf('Korean'));
  print(cities);

  for (var city in cities) {
    print(city);
  }
  var odds = [1, 3, 5, 7, 9];
  var sum = 0;
  for (var odd in odds) {
    sum += odd;
  }
  print(sum);
  // length: This checks the total number of items in the array
  print(cities.length);
  // isEmpty: This checks if the array is empty. It returns a boolean
  print([].isEmpty);
  // isNotEmpty: This checks if the array is not empty. It returns a boolean
  print([].isNotEmpty);
  // first: This checks for the first item in the array
  print(cities.first);
  // last: This checks for the last item in the array
  print(cities.last);
  // clear: clear all items from the array
  cities.clear();

  // SETS: SETS are a type of collection that is similar to list
  var euCountries = {'Italy', 'Uk', 'Russian'};
  var assianCountries = {'India', 'China', 'Russian'};
  // union: This merge items together without picking items that appears more than once
  print(euCountries.union(assianCountries));
  // intersection: This pick items that appear more than once
  print(euCountries.intersection(assianCountries));
  // difference: This shows the similar items in an array or object
  print(euCountries.difference(assianCountries));

  const a = {1, 3};
  const b = {3, 5};
  final c = (a.union(b).difference(a.intersection(b)));
  print(c);
  var total = 0;
  for (var c in c) {
    total += c;
  }
  print(total);

  // MAP
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  const orders = ['margherita', 'pepperoni', 'vegetarian'];
  var totals = 0.0;
  for (var item in orders) {
    final price = pizzaPrices[item];
    if (price != null) {
      totals += price;
    } else {
      print('$item is not on the menu');
    }
  }
  print('total: \$$totals');

  var restaurants = [
    {
      'name': 'Pizza Pepperoni',
      'cuisine': 'Italian',
      'ratings': [0.5, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [0.5, 4.5, 4.0],
    },
    {
      'name': 'Navaranta',
      'cuisine': 'Indian',
      'ratings': [0.5, 4.5, 4.0],
    }
  ];
  for (var restaurant in restaurants) {
    final ratings = restaurant['ratings'] as List<double>;
    var total = 0.0;
    for (var rating in ratings) {
      total += rating;
    }
    final avRating = total / ratings.length;
    restaurant['avRating'] = avRating;
    print(restaurants);
  }

  const addBlue = true;
  const addRed = false;
  const extraColors = ['yellow', 'green'];
  final colors = [
    'brown',
    'grey',
    if (addBlue)
      'blue',
    if (addRed) 
      'red'
  ];
  for (var color in extraColors) {
    color;
  }
  // colors.addAll(extraColors);
  print(colors);
}
