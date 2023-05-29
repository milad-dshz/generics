import 'package:generics/generics.dart';

void executeGraph() {
  var graph = Graph<String>();

  graph.addNode("A");
  graph.addNode("B");
  graph.addNode("C");
  graph.addNode("D");
  graph.addNode("E");

  graph.addEdge("A", "B");
  graph.addEdge("A", "C");
  graph.addEdge("B", "D");
  graph.addEdge("C", "E");

  print('Graph size: ${graph.size()}');

  print('Does graph contain B? ${graph.contains("B")}');
  print('Does graph contain F? ${graph.contains("F")}');

  print('Depth First Search from A:');
  graph.depthFirstSearch("A", (value) => print(value));

  print('Breadth First Search from A:');
  graph.breadthFirstSearch("A", (value) => print(value));
}
