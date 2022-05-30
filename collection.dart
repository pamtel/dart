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
  var euCountries = { 'Italy', 'Uk', 'Russian' };
  var assianCountries = { 'India', 'China', 'Russian' };
  // union: This merge items together without picking items that appears more than once
  print(euCountries.union(assianCountries));
  // intersection: This pick items that appear more than once
  print(euCountries.intersection(assianCountries));
  print(euCountries.difference(assianCountries));

  const a = { 1, 3};
  const b = {3, 5};
  var c = (a.difference(b));
  print(c);
  var d = {b.last};
  print(d);
  var e = (c.union(d));
  print(e);
  // print();
}
