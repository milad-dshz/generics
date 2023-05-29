class LinkedListNode<T> {
  T data;
  LinkedListNode<T>? next;
  LinkedListNode<T>? prev;

  LinkedListNode(this.data, {this.next, this.prev});
}

class LinkedList<T> {
  LinkedListNode<T>? head;
  LinkedListNode<T>? tail;
  int length = 0;

  void insert(T data) {
    length++;
    if (head == null) {
      head = tail = LinkedListNode<T>(data);
    } else {
      LinkedListNode<T> newNode = LinkedListNode<T>(data, prev: tail);
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
      LinkedListNode<T>? node = head;
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

  LinkedListNode<T>? find(T data) {
    LinkedListNode<T>? node = head;
    while (node != null) {
      if (node.data == data) {
        return node;
      }
      node = node.next;
    }
    return null;
  }

  void printList() {
    LinkedListNode<T>? node = head;
    while (node != null) {
      print(node.data);
      node = node.next;
    }
  }
}
