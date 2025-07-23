void main() {
  // List<int> results = twoSum([3, 2, 3], 6);
  // print(results);
}

List<int> twoSum(List<int> nums, int target) {
  int sum = 0;
  List<int> result = [];
  int counternumber = 0;

  for (int i = 1; i < nums.length; i++) {
    sum = nums[counternumber] + nums[i];
    if (sum == target) {
      result.add(counternumber);
      result.add(counternumber + 1);
      return result;
    } else {
      counternumber++;
    }
  }
  if (result.isEmpty) {
    sum = nums[0] + nums[nums.length - 1];
    if (sum == target) {
      result.add(0);
      result.add(nums.length - 1);
      return result;
    }
  }
  if (result.isEmpty) {
    int sum = 0;
    List<int> result = [];
    for (int i = 0; i < nums.length; i++) {
      for (int j = 0; j < nums.length; j++) {
        if (nums.length - 1 == j) {
          print("last");
          sum = nums[j] + nums[0];
          if (sum == target) {
            result.add(i);
            result.add(0);
            return result;
          }
        } else {
          if (j == 0 && i > 0) {
            sum = nums[i] + nums[j];
          } else {
            sum = nums[i] + nums[j + 1];
          }

          if (sum == target) {
            result.add(i);
            result.add(j + 1);
            return result;
          }
        }
      }
    }
    return result;
  }
  return result;
}
//(0,1),(1,2)(2,3)(3,4)(4,5)(5,6)(6,7)
//(0,1)(1,2)


