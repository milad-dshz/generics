import 'package:generics/data_structure_extension/queue/src/queue.dart';

void executeQueueWrapper() {
  var queue = QueueWrapper<int>();
  queue.enqueue(1);
  print(queue.peek());
  var item = queue.dequeue();
  print(item);
  print(queue.isEmpty);
}
