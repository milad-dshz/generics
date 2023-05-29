// Define the Node class
class Node<T> {
  T value;
  Node<T>? left;
  Node<T>? right;

  Node(this.value, {this.left, this.right});
}

// Define the Binary Tree class
class BinaryTree<T> {
  Node<T>? root;

  BinaryTree({this.root});

  void insert(T value) {
    if (root == null) {
      root = Node(value);
    } else {
      _insertNode(root, value);
    }
  }

  void _insertNode(Node<T>? node, T value) {
    if (node == null) return;
    if (value.toString().compareTo(node.value.toString()) < 0) {
      if (node.left == null) {
        node.left = Node(value);
      } else {
        _insertNode(node.left, value);
      }
    } else {
      if (node.right == null) {
        node.right = Node(value);
      } else {
        _insertNode(node.right, value);
      }
    }
  }

  Node<T>? search(T value) {
    return _searchNode(root, value);
  }

  Node<T>? _searchNode(Node<T>? node, T value) {
    if (node == null) {
      return null;
    } else if (value.toString().compareTo(node.value.toString()) < 0) {
      return _searchNode(node.left, value);
    } else if (value.toString().compareTo(node.value.toString()) > 0) {
      return _searchNode(node.right, value);
    } else {
      return node;
    }
  }

  void inOrderTraversal() {
    _inOrderTraversal(root);
  }

  void _inOrderTraversal(Node<T>? node) {
    if (node != null) {
      _inOrderTraversal(node.left);
      print(node.value);
      _inOrderTraversal(node.right);
    }
  }

  void preOrderTraversal() {
    _preOrderTraversal(root);
  }

  void _preOrderTraversal(Node<T>? node) {
    if (node != null) {
      print(node.value);
      _preOrderTraversal(node.left);
      _preOrderTraversal(node.right);
    }
  }

  void postOrderTraversal() {
    _postOrderTraversal(root);
  }

  void _postOrderTraversal(Node<T>? node) {
    if (node != null) {
      _postOrderTraversal(node.left);
      _postOrderTraversal(node.right);
      print(node.value);
    }
  }
}

