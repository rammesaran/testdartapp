abstract class Queue<E> {
  bool enqueue(
      E elment); //insert at back of the queue and retrun true if insterted sucessfully
  E? dequeue(); // remove the first
  bool get isEmpty; //check the queue is empty
  E? get peek; //return the element at front without removing it
}

class QueueExample<E> implements Queue<E> {
  final _list = <E>[];
  @override
  E? dequeue() {
    if (isEmpty) {
      return null;
    } else {
      return _list.removeAt(0);
    }
  }

  @override
  bool enqueue(E elment) {
    _list.add(elment);
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

void main() {
  final queueData = QueueStack<String>();
  queueData.enqueue('Ram');
  queueData.enqueue('priya');
  queueData.enqueue('saran');
  print(queueData);
  queueData.dequeue();
  print(queueData);
  queueData.peek;
  print(queueData);
}

class QueueStack<E> implements Queue<E> {
  final _leftStack = <E>[];
  final _rightStack = <E>[];
  @override
  E? dequeue() {
    if (_leftStack.isEmpty) {
      _leftStack.addAll(_rightStack.reversed);
      _rightStack.clear();
    }
    if (_leftStack.isEmpty) return null;
    return _leftStack.removeLast();
  }

  @override
  bool enqueue(E elment) {
    _rightStack.add(elment);
    return true;
  }

  @override
  String toString() {
    final combined = [
      ..._leftStack.reversed,
      ..._rightStack,
    ].join(', ');
    return '[$combined]';
  }

  @override
  // TODO: implement isEmpty
  bool get isEmpty => _leftStack.isEmpty && _rightStack.isEmpty;
  @override
  // TODO: implement peek
  E? get peek => _leftStack.isNotEmpty ? _leftStack.last : _rightStack.first;
}
