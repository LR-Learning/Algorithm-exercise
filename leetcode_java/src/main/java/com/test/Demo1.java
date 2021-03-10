package com.test;

/**
 * @author LR
 * @create 2021-03-08:18:05
 */
public class Demo1 {

    public int[] twoSum(int[] nums, int target) {
        // 双指针法
        int res[] = new int[2];
        int left =0, right = nums.length-1;
        while (left < right){
            if (nums[left] + nums[right] < target)
                left++;
            if (nums[left] + nums[right] > target)
                right--;
        }
        res[0] = nums[left];
        res[1] = nums[right];
        return res;
        /*
        超时

        int res[] = new int[2];
        for (int i = 0; i < nums.length; i++) {
            for (int j = i+1; j < nums.length; j++) {
                if (nums[i]+nums[j] == target){
                    res[0] = nums[i];
                    res[1] = nums[j];
                }
            }
        }
        return res;

         */

    }

    public int[] printNumbers(int n) {
        int len = (int) Math.pow(10,n);
        int res[] = new int[len-1];
        for(int i = 0; i< res.length; i++){
            res[i] = i+1;
        }
        return res;
    }


    public static void main(String[] args) {
        Demo1 d1 = new Demo1();
        int a[] = {2,7,11,15};
        int[] ints = d1.twoSum(a, 9);
        for (int i = 0; i < ints.length; i++) {
            System.out.println(ints[i]);
        }
//        int i = d1.DanceStep(7);
//        int[] ints = d1.printNumbers(2);
//        for (int i = 0; i < ints.length; i++) {
//            System.out.println(ints[i]);
//        }

    }
    public int DanceStep(int n){
        if (n == 0){
            return 1;
        }
        int dp[] = new int[n];
        dp[0] = 1;
        dp[1] = 2;
        for (int i = 2; i < n; i++) {
            dp[i] = (dp[i-1] + dp[i-2]) % 1000000007;
        }
        return dp[n-1];
    }
}
