class Solution {
  String longestPalindrome(String s) {
    if (s.length < 2) return s;

    int start = 0, maxLen = 1;

    // Function to expand from center
    void expand(int left, int right) {
      while (left >= 0 && right < s.length && s[left] == s[right]) {
        int curLen = right - left + 1;
        if (curLen > maxLen) {
          start = left;
          maxLen = curLen;
        }
        left--;
        right++;
      }
    }

    for (int i = 0; i < s.length; i++) {
      expand(i, i);       // Odd-length palindromes
      expand(i, i + 1);   // Even-length palindromes
    }

    return s.substring(start, start + maxLen);
  }
}
