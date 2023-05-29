import 'package:generics/generics.dart';

void executeLinkedList() {
  LinkedList<int> linkedList = LinkedList<int>();
  linkedList.insert(11);
  linkedList.insert(22);
  linkedList.insert(30);

  print('${linkedList.find(22)?.prev?.data ?? -1}');
}
