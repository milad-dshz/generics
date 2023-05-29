class Node<T> {
  T data;
  Node<T>? next;
  Node<T>? prev;

  Node(this.data, {this.next, this.prev});
}

class LinkedList<T> {
  Node<T>? head;
  Node<T>? tail;
  int length = 0;

  void insert(T data) {
    length++;
    if (head == null) {
      head = tail = Node<T>(data);
    } else {
      Node<T> newNode = Node<T>(data, prev: tail);
      tail!.next = newNode;
      tail = newNode;
    }
  }

  void delete(T data) {
    if (head == null) return;

    length--;
    if (head!.data == data) {
      head = head!.next;
      head!.prev = null;
    } else {
      Node<T>? node = head;
      while (node != null && node.data != data) {
        node = node.next;
      }

      if (node != null) {
        node.prev!.next = node.next;
        node.next?.prev = node.prev;

        if (node == tail) {
          tail = node.prev;
        }
      } else {
        length++; // data not found in the list, correct the length
      }
    }
  }

  Node<T>? find(T data) {
    Node<T>? node = head;
    while (node != null) {
      if (node.data == data) {
        return node;
      }
      node = node.next;
    }
    return null;
  }

  void printList() {
    Node<T>? node = head;
    while (node != null) {
      print(node.data);
      node = node.next;
    }
  }
}
