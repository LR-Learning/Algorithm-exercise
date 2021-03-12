package com.leetcode.demo;

import java.util.Stack;

/**
 * @author LR
 * @create 2021-03-11:9:11
 */
public class Calculate2 {
    public int calculate(String s) {
        char sign = '+';
        Stack<Integer> stack = new Stack<Integer>();
        int num = 0, res = 0;
        int len = s.length();
        for (int i = 0; i < len; i++) {
            if (Character.isDigit(s.charAt(i))){
                num = num * 10 + s.charAt(i) - '0';
            }
            if (!Character.isDigit(s.charAt(i)) && s.charAt(i) != ' ' || i == len - 1){
                // 判断上一个符号是什么
                switch (sign){
                    // 当前符号前的数字直接压入栈
                    case '+' : stack.push(num); break;
                    case '-' : stack.push(-num); break;
                    case '*' : stack.push(stack.pop() * num); break;
                    case '/' : stack.push(stack.pop() / num); break;
                }
                // 记录当前符号
                sign = s.charAt(i);
                // 数字归零
                num = 0;
            }

        }
        // 将栈内剩余数字累加，即为结果
        while (!stack.isEmpty()){
            res += stack.pop();
        }
        return res;
    }
}
