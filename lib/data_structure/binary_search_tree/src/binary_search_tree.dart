class TreeNode<T> {
  T value;
  TreeNode<T>? left;
  TreeNode<T>? right;

  TreeNode(this.value, {this.left, this.right});
}

class BST<T extends Comparable<T>> {
  TreeNode<T>? root;

  // Insert Method
  void insert(T value) {
    root = _insert(root, value);
  }

  TreeNode<T>? _insert(TreeNode<T>? node, T value) {
    if (node == null) {
      return TreeNode(value);
    }
    if (value.compareTo(node.value) < 0) {
      node.left = _insert(node.left, value);
    } else if (value.compareTo(node.value) > 0) {
      node.right = _insert(node.right, value);
    }
    return node;
  }

  // Contains Method
  bool contains(T value) {
    return _contains(root, value);
  }

  bool _contains(TreeNode<T>? node, T value) {
    if (node == null) {
      return false;
    }
    if (value.compareTo(node.value) < 0) {
      return _contains(node.left, value);
    } else if (value.compareTo(node.value) > 0) {
      return _contains(node.right, value);
    } else {
      return true;
    }
  }

  // Remove Method
  void remove(T value) {
    root = _remove(root, value);
  }

  TreeNode<T>? _remove(TreeNode<T>? node, T value) {
    if (node == null) {
      return node;
    }
    if (value.compareTo(node.value) < 0) {
      node.left = _remove(node.left, value);
    } else if (value.compareTo(node.value) > 0) {
      node.right = _remove(node.right, value);
    } else {
      if (node.left == null) {
        return node.right;
      } else if (node.right == null) {
        return node.left;
      }
      node.value = _findMin(node.right!)!;
      node.right = _remove(node.right, node.value);
    }
    return node;
  }

  // Find Min Value
  T? findMin() {
    return _findMin(root);
  }

  T? _findMin(TreeNode<T>? node) {
    return node?.left == null ? node?.value : _findMin(node?.left);
  }

  // Find Max Value
  T? findMax() {
    return _findMax(root);
  }

  T? _findMax(TreeNode<T>? node) {
    return node?.right == null ? node?.value : _findMax(node?.right);
  }

  // In-order Traversal
  void inorder() {
    _inorder(root);
    print(""); // for new line
  }

  void _inorder(TreeNode<T>? node) {
    if (node != null) {
      _inorder(node.left);
      print("${node.value}, ");
      _inorder(node.right);
    }
  }
}
