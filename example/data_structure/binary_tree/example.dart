import 'package:generics/generics.dart';

void executeBinaryTree() {
  var tree = BinaryTree<int>();
  tree.insert(3);
  tree.insert(2);
  tree.insert(1);
  tree.insert(4);
  tree.insert(5);

  print('In-order traversal:');
  tree.inOrderTraversal();

  print('Pre-order traversal:');
  tree.preOrderTraversal();

  print('Post-order traversal:');
  tree.postOrderTraversal();

  print('Search for value 3 in the tree:');
  var searchNode = tree.search(3);
  if (searchNode != null) {
    print('Value found in the tree: ${searchNode.value}');
  } else {
    print('Value not found in the tree');
  }
}
