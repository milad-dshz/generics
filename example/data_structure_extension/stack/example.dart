import 'package:generics/generics.dart';

void executeStackWrapper() {
  var stack = StackWrapper<int>();
  stack.push(1);
  print(stack.peek());  // Output: 1
  var item = stack.pop();
  print(item);  // Output: 1
  print(stack.isEmpty);  // Output: true
}
