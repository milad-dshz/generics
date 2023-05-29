import 'package:generics/generics.dart';

void executeQueueWrapper() {
  var queue = QueueWrapper<int>();
  queue.enqueue(1);
  print(queue.peek());
  var item = queue.dequeue();
  print(item);
  print(queue.isEmpty);
}
