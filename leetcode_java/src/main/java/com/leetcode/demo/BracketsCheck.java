package com.leetcode.demo;

import java.util.Stack;

/**
 * @author LR
 * @create 2021-03-10:19:58
 */
public class BracketsCheck {

    public boolean bracketsCheck(String s){
        Stack stack = new Stack();
        char ch;
        int i = 0;
        while (s.charAt(i) != '\0'){
            switch (s.charAt(i)){
                case '(' : stack.push('('); break;
                case '[' : stack.push('['); break;
                case '{' : stack.push('{'); break;

                case ')' : ch = (char)stack.pop();
                    if (ch != '(') return false;
                    break;
                case ']' : ch = (char)stack.pop();
                    if (ch != '[') return false;
                    break;

                case '}' : ch = (char)stack.pop();
                    if (ch != '}') return false;
                    break;

                default:
                    break;
            }
        }
        if (!stack.empty()){
            System.out.println("括号不匹配");
            return false;
        }else {
            System.out.println("括号匹配成功");
            return true;
        }
    }

    public static void main(String[] args) {
        BracketsCheck b = new BracketsCheck();
        b.bracketsCheck("(){}[]");
    }
}
