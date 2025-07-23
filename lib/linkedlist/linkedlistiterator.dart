import 'package:testdartapp/linkedlist/linkedlist.dart';
import 'package:testdartapp/linkedlist/linkedlisthead.dart';

class _LinkedListIterator<E> implements Iterator<E> {
  final LinkedList<E> _list;
  Node<E>? _currentNode;

  bool _firstpass = true;

  _LinkedListIterator(LinkedList<E> list) : _list = list;
  @override
  E get current => _currentNode!.value;

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
