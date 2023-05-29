
T? binarySearch<T extends Comparable<T>>(List<T> sortedList, T target) {
  int low = 0;
  int high = sortedList.length - 1;

  while (low <= high) {
    int mid = low + ((high - low) ~/ 2);
    int comparison = target.compareTo(sortedList[mid]);

    if (comparison == 0) {
      return sortedList[mid]; // Element found, return it
    } else if (comparison < 0) {
      high = mid - 1; // Target is in the lower half
    } else {
      low = mid + 1; // Target is in the upper half
    }
  }

  return null;
}
