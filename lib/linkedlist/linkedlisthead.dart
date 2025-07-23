import 'package:testdartapp/linkedlist/linkedlist.dart';

class LinkedList<E> extends Iterable<E> {
  Node<E>? tail;
  Node<E>? head;

  @override
  bool get isEmpty {
    return head == null;
  }

  @override
  String toString() {
    if (isEmpty) return 'Emptylist';
    return head.toString();
  }

  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }
    tail!.next = Node(value: value);
    tail = tail!.next;
  }

  Node<E>? nodeAt(int index) {
    var currentnode = head;
    var currentindex = 0;

    while (currentnode != null && currentindex < index) {
      currentnode = currentnode.next;
      currentindex = currentindex + 1;
    }
    return currentnode;
  }

  Node<E> insertAfter(Node<E> node, E value) {
    if (tail == node) {
      append(value);
      return tail!;
    }
    node.next = Node(value: value, next: node.next);
    return node.next!;
  }

  @override
  Iterator<E> get iterator => throw UnimplementedError();
}
