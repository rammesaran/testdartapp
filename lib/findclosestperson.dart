void main() {
  int result = findClosest(2, 7, 4);
  print(result);
}

int findClosest(int x, int y, int z) {
  int stepOne = 0;
  int stepTwo = 0;
  if (x > z) {
    stepOne = x - z;
  } else if (x < z) {
    stepOne = z - x;
  }
  if (y > z) {
    stepTwo = y - z;
  } else if (y < z) {
    stepTwo = z - y;
  }

  if (stepOne < stepTwo) {
    return 1;
  } else if (stepOne > stepTwo) {
    return 2;
  } else if (stepOne == stepTwo) {
    return 0;
  }
  return 0;
}
