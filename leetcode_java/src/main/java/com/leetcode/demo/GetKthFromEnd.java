package com.leetcode.demo;

/**
 * @author LR
 * @create 2021-03-11:9:28
 */
class ListNode{
    int val;
    ListNode next;
    ListNode(int x){ val = x;}
}
public class GetKthFromEnd {
    public ListNode getKthFromEnd(ListNode head, int k) {
        ListNode former = head, latter = head;
        int i = 0;
        while(former != null){
            if (i < k){
                former = former.next;
                i++;
            }
            former = former.next;
            latter = latter.next;
        }
        return latter;
    }
}
