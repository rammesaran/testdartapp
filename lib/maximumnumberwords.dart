void main() {
  int result = canBeTypedWords("jwssg", "");
//  int result = canBeTypedWords("leet code", "e");

  print(result);
}

int canBeTypedWords(String text, String brokenLetters) {
  Set<String> unique = brokenLetters.split('').toSet();
  List<String> result = text.split(' ');
  int count = 0;
  int isNotPresented = 0;
  List<String> uniqueListData = unique.toList();
  List<String> resultCopies = text.split(' ');

  for (int i = 0; i < uniqueListData.length; i++) {
    for (int j = 0; j < result.length; j++) {
      if (result[j].contains(uniqueListData[i])) {
        resultCopies.remove(result[j]);
      }
    }
  }

  return resultCopies.length;
}


  // if (brokenLetters.isNotEmpty) {
  //   for (int i = 0; i < uniqueListData.length; i++) {
  //     for (int j = 0; j < result.length; j++) {
  //       if (result[j].contains(uniqueListData[i])) {
  //         print(result[j]);
  //         print(uniqueListData[i]);
  //       } else {
  //         print(result[j]);
  //         print(uniqueListData[i]);
  //         isNotPresented = isNotPresented + 1;
  //       }
  //     }
  //     if (isNotPresented == result.length) {
  //       count = count + 1;
  //     }
  //   }
  // } else {
  //   return result.length;
  // }