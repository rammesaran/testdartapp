void main() {
  String output = longestCommonPrefix(["flower", "flow", "flight"]);
  print(output);
}

String longestCommonPrefix(List<String> strs) {
  if (strs.isEmpty) {
    return "";
  }

  // Start with the first string as reference
  String prefix = strs[0];

  // Compare with each subsequent string
  for (int i = 1; i < strs.length; i++) {
    // Reduce prefix length until it matches the start of current string
    while (prefix.isNotEmpty && !strs[i].startsWith(prefix)) {
      prefix = prefix.substring(0, prefix.length - 1);
    }

    // If prefix becomes empty, no common prefix exists
    if (prefix.isEmpty) {
      break;
    }
  }

  return prefix;
}
