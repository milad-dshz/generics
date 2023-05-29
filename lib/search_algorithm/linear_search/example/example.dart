import 'package:generics/search_algorithm/linear_search/src/linear_search.dart';

void executeLinearSearch() {
  List<int> numbers = [4, 2, 8, 5, 1, 9];
  int target = 5;

  int? result = linearSearch(numbers, target);
  if (result != null) {
    print('Element $target found');
  } else {
    print('Element $target not found');
  }

  List<String> names = ['John', 'Alice', 'Bob'];
  String targetName = 'Alice';

  String? resultName = linearSearch(names, targetName);
  if (resultName != null) {
    print('Element $targetName found');
  } else {
    print('Element $targetName not found');
  }
}
