
import 'package:generics/src/data_structure_extension/list/list.dart';

class StackWrapper<T> {
  final ListWrapper<T> _stack;

  StackWrapper() : _stack = ListWrapper<T>();

  bool get isEmpty => _stack.length == 0;

  // Push item onto the stack
  void push(T item) {
    if (item == null) {
      throw ArgumentError('Item cannot be null');
    }
    _stack.add(item);
  }

  // Pop item off the stack
  T pop() {
    if (isEmpty) {
      throw StateError('Cannot pop an empty stack');
    }
    var item = _stack[_stack.length - 1];
    _stack.removeAt(_stack.length - 1);
    return item;
  }

  // Peek at the top item of the stack
  T peek() {
    if (isEmpty) {
      throw StateError('Cannot peek an empty stack');
    }
    return _stack[_stack.length - 1];
  }
}
