int[] nums = {8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2};

void setup() {
  checkIfDone(nums);
}

void draw() {
  if (!checkIfDone(nums)) {
    for (int i = 0; i < nums.length -1; ++i) {
      int tmp=0;
      if (nums[i] > nums[i +1]) {
        tmp = nums[i];
        nums[i] = nums[i +1];
        nums[i +1] = tmp;
      }
    }
  } else {
    return;
  }
  println(nums);
}

boolean checkIfDone(int[] a) {
  for (int j = 0; j < a.length -1; ++j) {
    if (a[j] > a[j +1]) return false;
  }
  return true;
}
