import 'package:generics/data_structure/binary_search_tree/src/binary_search_tree.dart';

void executeBinarySearchTree() {
  var tree = BST<num>();

  tree.insert(5);
  tree.insert(3);
  tree.insert(7);
  tree.insert(2);
  tree.insert(4);
  tree.insert(6);
  tree.insert(8);

  print('Inorder traversal of tree:');
  tree.inorder();

  print('Min value in tree: ${tree.findMin()}');
  print('Max value in tree: ${tree.findMax()}');

  print('Does tree contain 5? ${tree.contains(5)}');
  print('Does tree contain 10? ${tree.contains(10)}');

  tree.remove(5);
  print('After removing 5, inorder traversal of tree:');
  tree.inorder();

  print('Does tree contain 5 after removal? ${tree.contains(5)}');
}
