 void main() {
  Stream<int> result = getBoatCount();
  result.listen((event) {
    print("the recieved value is ${event.toString()}");
  });

}


Stream<int> getBoatCount()async*{
for(int i=0; i<=10; i++){
 await Future.delayed(Duration(seconds: 3));
  print("the value sent of i is $i");
  yield i;
}
}