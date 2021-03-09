package com.test;

/**
 * @author LR
 * @create 2021-03-08:18:05
 */
public class Demo1 {



    public static void main(String[] args) {
        Demo1 d1 = new Demo1();
        int i = d1.DanceStep(7);
        System.out.println(i);
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
