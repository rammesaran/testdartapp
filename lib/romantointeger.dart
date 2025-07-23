void main() {
  int result = romanToInt("MCMXCIV");
  print(result);
}

int romanToInt(String s) {
  Map<String, int> constvalue = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000
  };

  Map<String, int> pairvalue = {
    "IV": 4,
    "IX": 9,
    "XL": 40,
    "XC": 90,
    "CD": 400,
    "CM": 900
  };

  List<int>? result = [];

  List splitedstring = s.split("");
  String firstletter = '';
  String secondLetter = "";
  String joinletter = "";
  for (int i = 0; i < splitedstring.length; i++) {
    firstletter = splitedstring[i];
    secondLetter = i < splitedstring.length - 1 ? splitedstring[i + 1] : "";
    joinletter = firstletter + secondLetter;

    if (pairvalue.containsKey(joinletter)) {
      final keysOne = constvalue[firstletter];
      final keysTwo = constvalue[secondLetter];
      result.add(-keysOne!);
      result.add(keysTwo!);
      i = i + 1;
    } else if (splitedstring.length - 1 == i && splitedstring.length > 1) {
      if (constvalue.containsKey(firstletter)) {
        final keys = constvalue[firstletter];
        result.add(keys!);
      }
    } else if (constvalue.containsKey(firstletter)) {
      final keys = constvalue[firstletter];

      result.add(keys!);
    }
  }
  print(result);
  return result.reduce((a, b) => a + b);
}
