void main() {
  int result = squreRoot(25);
  print(result);
}

int squreRoot(int x) {
  if (x == 0) return 0;
  int count = 2;
  int squarevalue = 2;
  int total = 0;
  int resultCounter = 1;
  do {
    total = count * squarevalue;
    count++;
    squarevalue++;
    resultCounter++;
  } while (total <= x);
  return resultCounter - 1;
}
