package com.leetcode.demo;

/**
 * @author LR
 * @create 2021-03-09:10:11
 */
public class RemoveDuplicates {

    public String removeDuplicates(String s){
        StringBuffer stack = new StringBuffer();
        int top = -1;
        for (int i = 0; i < s.length(); i++) {
            char ch = s.charAt(i);
            if (top >= 0 && stack.charAt(top) == ch){
                stack.deleteCharAt(top);
                --top;
            }else {
                stack.append(ch);
                ++top;
            }
        }
        return stack.toString();
    }

    public static void main(String[] args) {
        RemoveDuplicates redup = new RemoveDuplicates();
        String a = redup.removeDuplicates("abbaca");
        for (int i = 0; i < a.length(); i++) {
            System.out.println(a.charAt(i));
        }

        }

}
