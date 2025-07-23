void main() {
  int result = getSecondSmallNumber([0, -5, -6, -3, -9]);
  print(result);
}

getSecondSmallNumber(List<int> numbers) {
  int lowestNumber = 0;
  int secondLowestNumber = 0;
  int firstnumber = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (i == 0) {
      firstnumber = numbers[i];
    } else {
      if (firstnumber > numbers[i]) {
        lowestNumber = numbers[i];
        secondLowestNumber = firstnumber;
      }
    }
  }
  return lowestNumber;
}
