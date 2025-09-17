void main() {
  int result = maxFreqSum("bx");
  print(result);
}

int maxFreqSum(String s) {
  String vowels = 'aeiou';
  List<String> result = s.split('');
  Map<String, int> vowlesData = {};
  Map<String, int> nonvowlesData = {};
  int count = 0;
  for (int i = 0; i < result.length; i++) {
    if (vowels.contains(result[i])) {
      bool valueExist = vowlesData.containsKey(result[i]);
      if (valueExist) {
        var countData = vowlesData[result[i]];
        int value = countData!.toInt();
        vowlesData[result[i]] = value + 1;
      } else {
        vowlesData[result[i]] = 1;
      }
    } else {
      bool valueExist = nonvowlesData.containsKey(result[i]);
      if (valueExist) {
        var countData = nonvowlesData[result[i]];
        int value = countData!.toInt();
        nonvowlesData[result[i]] = value + 1;
      } else {
        nonvowlesData[result[i]] = 1;
      }
    }
  }

  List<int> dataOne = vowlesData.values.toList()..sort();

  List<int> dataTwo = nonvowlesData.values.toList()..sort();

  if (dataOne.isNotEmpty) {
    //If the dataone is not empty
    if (dataTwo.isNotEmpty) {
      //both are not empty so value is there
      return dataOne.last + dataTwo.last;
    } else if (dataOne.isEmpty) {
      //dataone is empty
      return dataTwo.last;
    } else if (dataTwo.isEmpty) {
      //data two is empty
      return dataOne.last;
    }
  } else if (dataTwo.isNotEmpty) {
    return dataTwo.last;
  }
  return count;
}
