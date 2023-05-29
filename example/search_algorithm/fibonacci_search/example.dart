import 'package:generics/generics.dart';

void executeFibonacciSearch() {
  List<int> list = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100];
  FibonacciSearch<int> fibSearch = FibonacciSearch<int>(list);
  int x = 85; // element to be searched

  print("List: $list");
  print("Searching for $x...");

  int result = fibSearch.fibMonaccianSearch(x);
  if (result >= 0) {
    print("Element found at index $result");
  } else {
    print("Element not found in the list");
  }
}
