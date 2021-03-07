package com.leetcode.demo;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.List;

/**
 * @author LR
 * @create 2021-03-07:9:58
 */


public class  SpliteThePalindromeString {
    /*
    题目：给定一个字符串 s，将 s 分割成一些子串，使每个子串都是回文串。
    题解：每一个结点表示剩余没有扫描到的字符串，产生分支是截取了剩余字符串的前缀；
    产生前缀字符串的时候，判断前缀字符串是否是回文。

    如果前缀字符串是回文，则可以产生分支和结点；
    如果前缀字符串不是回文，则不产生分支和结点，这一步是剪枝操作。

    在叶子结点是空字符串的时候结算，此时 从根结点到叶子结点的路径，就是结果集里的一个结果，使用深度优先遍历，记录下所有可能的结果。
    使用一个路径变量 path 搜索，path 全局使用一个（注意结算的时候，要生成一个拷贝），因此在递归执行方法结束以后需要回溯，即将递归之前添加进来的元素拿出去；
    path 的操作只在列表的末端，因此合适的数据结构是栈

     */
    public List<List<String>> partition(String s){
        int len = s.length();
        List<List<String>> res = new ArrayList<>();
        if(len == 0){
            return res;
        }
        Deque<String> stack = new ArrayDeque<>();
        char[] charArray = s.toCharArray(); // 将字符串转化成字符数组
        dfs(charArray, 0, len, stack, res);
        return res;
    }

    /**
     * 深度优先遍历
     * @param charArray
     * @param index     起始字符的索引
     * @param len       字符串 s 的长度，可以设置为全局变量
     * @param path      记录从根节点到叶子节点的路径
     * @param res       记录所有结果
     */
    private void dfs(char[] charArray, int index, int len, Deque<String> path, List<List<String>> res){
        if(index == len){
            res.add(new ArrayList<>(path));
            return;
        }

        for (int i = index; i < len; i++) {
            // 因为截取字符串是消耗性能的，采用传子串下标的方式判断一个子串是否是回文子串
            if (!checkPalindrome(charArray, index,i)){
                continue;
            }
            path.addLast(new String(charArray, index, i+1-index)); // 分配一个新字符串，该字符串包含字符数组参数的子数组中的字符
            dfs(charArray, i+1, len, path, res);
            path.removeLast();
        }
    }

    /**
     * 判断子串是否为回文串
     * @param charArray
     * @param left      子串的左边界
     * @param right     子串的右边界
     * @return
     */
    private boolean checkPalindrome(char[] charArray, int left, int right){
        while (left < right){
            if (charArray[left] != charArray[right]){
                return false;
            }
            left++;
            right--;
        }
        return true;
    }

    public static void main(String[] args) {
    }


}
