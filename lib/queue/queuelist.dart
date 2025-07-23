import 'package:testdartapp/queue/queue.dart';

class QueueList<E> implements Queue<E> {
  final _list = <E>[];

  @override
  E? dequeue() => (isEmpty) ? null : _list.removeAt(0);

  @override
  bool enqueue(E element) {
    _list.add(element);
    return true;
  }

  @override
  // TODO: implement isEmpty
  bool get isEmpty => _list.isEmpty;

  @override
  // TODO: implement peek
  E? get peek => (isEmpty) ? null : _list.first;

  @override
  String toString() => _list.toString();
}
