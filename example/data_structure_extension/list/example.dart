import 'package:generics/generics.dart';

void executeListWrapper() {
  var list = ListWrapper<int>();
  list.add(1);
  print(list[0]);
  list[0] = 2;
  print(list[0]);
  list.removeAt(0);
  print(list.length);
}
