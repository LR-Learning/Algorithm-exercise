package com.leetcode.demo;

import java.util.Stack;

/**
 * @author LR
 * @create 2021-03-10:10:33
 */
public class Calculate {
    public int calculate(String s){
        Stack<Integer> stack = new Stack<Integer>();
        // sign 代表正负
        int sign = 1, res = 0;
        int length = s.length();
        for (int i = 0; i < length; i++) {
            char ch = s.charAt(i);
            if (Character.isDigit(ch)){
                int cur = ch - '0'; // 将字符转化为数字
                while (i+1 < length && Character.isDigit(s.charAt(i+1)))
                    cur = cur * 10 + s.charAt(++i) - '0';
                res = res + sign * cur;
            }else if (ch == '+'){
                sign = 1;
            }else if (ch == '-'){
                sign = -1;
            }else if (ch == '('){
                stack.push(res);
                res = 0;
                stack.push(sign);
                sign = 1;
            }else if (ch == ')'){
                res = stack.pop() * res + stack.pop(); // 判断括号内正负 再加上前面计算的值
            }
        }
        return res;
    }

    public static void main(String[] args) {
        Calculate c = new Calculate();
        int calculate = c.calculate("1+1+(2-1)");
        System.out.println(calculate);
    }
}
