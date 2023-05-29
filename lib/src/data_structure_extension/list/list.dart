class ListWrapper<T> {
  final List<T> _list;

  ListWrapper() : _list = <T>[];

  // Allow access to the list length
  int get length => _list.length;

  // Adding an element to the list. It checks if the value is not null.
  void add(T value) {
    if (value == null) throw ArgumentError('Value cannot be null');
    _list.add(value);
  }

  // Accessing the list by index
  T operator [](int index) => _list[index];

  // Writing to the list by index
  void operator []=(int index, T value) {
    if (value == null) throw ArgumentError('Value cannot be null');
    _list[index] = value;
  }

  // Method to remove the value at index
  void removeAt(int index) {
    _list.removeAt(index);
  }
}
