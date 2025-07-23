void main() {
  int result = lengthOfLongestSubstring("ckilbkd");
  print(result);
}
//(pwwkew) --wke
//(dvdf) --3
//"ckilbkd" --5
//anviaj - 5

int lengthOfLongestSubstring(String s) {
  List<String> splitted = s.split("");
  String currentletter = "";
  List<String> addition = [];
  int clearCount = 0;
  int difference = 0;

  if (splitted.isEmpty) {
    return 0;
  } else {
    for (int i = 0; i < splitted.length; i++) {
      currentletter = splitted[i];
      if (!addition.contains(currentletter)) {
        addition.add(currentletter);
      } else {
        clearCount = clearCount + 1;

        print(addition.contains(currentletter));
        if (clearCount >= 1 && clearCount <= 1) {
          if (addition.contains(currentletter)) {
            if (i < splitted.length - 1) {
              if (splitted[i + 1] != currentletter) {
                if (splitted[i - 1] != currentletter) {
                  difference = ((splitted.length - 1) - i);
                  //print("difference is $difference");
                  if (difference >= 1) {
                    addition.remove(currentletter);
                    addition.add(currentletter);
                    print("aaa");
                    if (addition.length > 2) {
                      return addition.length;
                    }
                  }
                } else {
                  addition.clear();
                  addition.add(currentletter);
                }
              }
            }
          }
        }
      }
    }
    print("addition is $addition");
    return addition.length;
  }
}
