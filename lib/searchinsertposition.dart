void main() {
  //bool result = searchInsertTwo([1, 3, 56, 66, 68, 80, 99, 105, 450], 81);
  int resultData = searchInsert([3, 4, 9, 10], 5);
  print("resultData is $resultData");
}

bool searchInsertTwo(List<int> nums, int target) {
  if (nums.isEmpty) return false;
  final middlevalue = nums.length ~/ 2;

  if (target > nums[middlevalue]) {
    for (int i = middlevalue; i < nums.length; i++) {
      if (nums[i] == target) return true;
    }
  } else {
    for (int i = middlevalue; i >= 0; i--) {
      if (nums[i] == target) return true;
    }
  }
  return false;
}

int searchInsert(List<int> nums, int target) {
  final middlelist = nums.length ~/ 2;

  if (target > nums[middlelist]) {
    for (int i = middlelist; i < nums.length; i++) {
      if (nums[i] == target) {
        return i;
      }

      if (i == nums.length - 1) {
        if (nums[i] < target) {
          return i + 1;
        } else if (nums[i] > target) {
          return i;
        }
      }

      if (nums[i] > target) {
        return i;
      }
    }
  } else {
    for (int i = middlelist; i >= 0; i--) {
      if (nums[i] == target) {
        return i;
      }

      if (i == 0) {
        if (nums[i] < target) {
          return i + 1;
        } else if (nums[i] > target) {
          return i;
        }
      }

      if (nums[i] < target) {
        //return nums[i];
        return i + 1;
      }
    }
  }
  return 0;
}
