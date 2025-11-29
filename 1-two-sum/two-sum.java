import java.util.*;
// add to github 
class Solution {
    public int[] twoSum(int[] nums, int target) {
        Map<Integer, Integer> map = new HashMap<>();

        for (int i = 0; i < nums.length; i++) {
            int diff = target - nums[i];

            if (map.containsKey(diff)) {
                return new int[] { map.get(diff), i };
            }
            map.put(nums[i], i);
        }
        
        return new int[] {}; // No pair found (optional)

    }
}
public class Main {
    
    public static void main(String[] args) {
        Solution s = new Solution();
        int[] nums = {2, 7, 11, 15};
        int target = 9;

        int[] ans = s.twoSum(nums, target);
        System.out.println(ans[0] + " " + ans[1]);
    }
}
