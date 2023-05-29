import 'package:generics/data_structure_extension/stack/src/stack.dart';

void executeStackWrapper() {
  var stack = StackWrapper<int>();
  stack.push(1);
  print(stack.peek());  // Output: 1
  var item = stack.pop();
  print(item);  // Output: 1
  print(stack.isEmpty);  // Output: true
}
