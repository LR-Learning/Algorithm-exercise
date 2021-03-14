package com.leetcode.demo;

import java.util.Iterator;
import java.util.LinkedList;

/**
 * @author LR
 * 不使用任何内建的哈希表库设计一个哈希集合（HashSet）
 * @create 2021-03-14:12:33
 */
public class MyHashSet {
    private static final int BASE = 769;
    private LinkedList[] data;

    // 初始化数据结构
    public MyHashSet(){
        data = new LinkedList[BASE];
        for (int i = 0; i < BASE; i++) {
            data[i] = new LinkedList<Integer>();
        }
    }

    // 添加元素
    public void add(int key){
        int h = hash(key);
        Iterator<Integer> iterator = data[h].iterator();
        while (iterator.hasNext()){
            Integer element = iterator.next();
            if (element == key){
                return;
            }
        }
        data[h].offerLast(key);
    }

    // 删除元素
    public void remove(int key){
        int h = hash(key);
        Iterator<Integer> iterator = data[h].iterator();
        while (iterator.hasNext()){
            Integer element = iterator.next();
            if (element == key){
                data[h].remove(element);
                return;
            }
        }
    }

    // 查询
    public boolean contains(int key){
        int h = hash(key);
        Iterator<Integer> iterator = data[h].iterator();
        while (iterator.hasNext()){
            Integer element = iterator.next();
            if (element == key){
                return true;
            }
        }
        return false;
    }

    private static int hash(int key){
        return key % BASE;
    }
}
