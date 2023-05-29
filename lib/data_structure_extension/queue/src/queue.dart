import 'package:generics/data_structure_extension/list/src/list.dart';

class QueueWrapper<T> {
  final ListWrapper<T> _queue;

  QueueWrapper() : _queue = ListWrapper<T>();

  bool get isEmpty => _queue.length == 0;

  // Add item to the queue
  void enqueue(T item) {
    if (item == null) {
      throw ArgumentError('Item cannot be null');
    }
    _queue.add(item);
  }

  // Remove item from the queue
  T dequeue() {
    if (isEmpty) {
      throw StateError('Cannot dequeue an empty queue');
    }
    var item = _queue[0];
    _queue.removeAt(0);
    return item;
  }

  // Peek at the front of the queue
  T peek() {
    if (isEmpty) {
      throw StateError('Cannot peek an empty queue');
    }
    return _queue[0];
  }
}
