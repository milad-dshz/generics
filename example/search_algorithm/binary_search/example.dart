import 'package:generics/generics.dart';

void executeBinarySearch() {
  List<num> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var target = 7;
  var result = binarySearch(numbers, target);
  print(result);
}
