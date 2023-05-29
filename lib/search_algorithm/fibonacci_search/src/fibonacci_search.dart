class FibonacciSearch<T extends Comparable> {
  List<T> sortedList;

  FibonacciSearch(this.sortedList);

  int fibMonaccianSearch(T x) {
    int fibMMm2 = 0;
    int fibMMm1 = 1;
    int fibM = fibMMm2 + fibMMm1;

    while (fibM < sortedList.length) {
      fibMMm2 = fibMMm1;
      fibMMm1 = fibM;
      fibM = fibMMm2 + fibMMm1;
    }

    int offset = -1;

    while (fibM > 1) {
      int i = min(offset + fibMMm2, sortedList.length - 1);

      if (sortedList[i].compareTo(x) < 0) {
        fibM = fibMMm1;
        fibMMm1 = fibMMm2;
        fibMMm2 = fibM - fibMMm1;
        offset = i;
      } else if (sortedList[i].compareTo(x) > 0) {
        fibM = fibMMm2;
        fibMMm1 = fibMMm1 - fibMMm2;
        fibMMm2 = fibM - fibMMm1;
      } else {
        return i;
      }
    }

    if (fibMMm1 == 1 && sortedList[offset + 1].compareTo(x) == 0) {
      return offset + 1;
    }

    return -1;
  }

  int min(int x, int y) {
    return (x <= y) ? x : y;
  }
}
