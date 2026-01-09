class Solution {
  List<List<int>> threeSum(List<int> nums) {
    List<List<int>> result = [];
    
    // Sort the array to use the two-pointer technique
    nums.sort();

    for (int i = 0; i < nums.length - 2; i++) {
      // Skip the same element to avoid duplicate triplets
      if (i > 0 && nums[i] == nums[i - 1]) continue;

      int left = i + 1;
      int right = nums.length - 1;

      while (left < right) {
        int sum = nums[i] + nums[left] + nums[right];

        if (sum == 0) {
          result.add([nums[i], nums[left], nums[right]]);
          
          // Skip duplicates for the second and third elements
          while (left < right && nums[left] == nums[left + 1]) left++;
          while (left < right && nums[right] == nums[right - 1]) right--;

          left++;
          right--;
        } else if (sum < 0) {
          // We need a larger sum
          left++;
        } else {
          // We need a smaller sum
          right--;
        }
      }
    }

    return result;
  }
}