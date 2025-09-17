import 'dart:io';

void main() {
  final list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  for (final element in list) {
    print(element);
  }
}

class Node<T> {
  Node({this.next, required this.value});

  T value;
  Node<T>? next;

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<E> extends Iterable<E> {
  Node<E>? head;
  Node<E>? tail;

  @override
  bool get isEmpty => head == null;

  @override
  String toString() {
    if (isEmpty) return "empty list";
    return head.toString();
  }

  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  E? pop() {
    final value = head?.value;
    head = head?.next;
    if (isEmpty) {
      tail = null;
    }
    return value;
  }

  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }
    tail?.next = Node(value: value);
    tail = tail?.next;
  }

  Node<E>? nodeAt(int index) {
    var currentIndex = 0;
    var currentNode = head;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex = currentIndex + 1;
    }
    return currentNode;
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
  Iterator<E> get iterator => _LinkedListIterator(this);
}

class _LinkedListIterator<E> implements Iterator<E> {
  _LinkedListIterator(LinkedList<E> list) : _list = list;
  final LinkedList<E> _list;
  Node<E>? _currentNode;
  @override
  // TODO: implement current
  E get current => _currentNode!.value;

  bool _firstpass = true;

  @override
  bool moveNext() {
    if (_list.isEmpty) return false;

    if (_firstpass) {
      _currentNode = _list.head;
      _firstpass = false;
    } else {
      _currentNode = _currentNode?.next;
    }
    return _currentNode != null;
  }
}
