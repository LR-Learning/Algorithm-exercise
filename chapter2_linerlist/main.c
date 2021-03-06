#include <stdio.h>
#include <stdlib.h>
#include <accctrl.h>

/*
 * 数组左移p位
 */
void Reverse(int R[], int from, int to){
    int i, temp;
    for (i = 0;  i<(to-from+1)/2 ; i++) {
        temp = R[from+i];
        R[from+i] = R[to-i];
        R[to-i] = temp;
    }
}

void Converse(int R[], int n, int p){
    Reverse(R, 0, p-1);
    Reverse(R, p, n-1);
    Reverse(R, 0, n-1);

}

/*
 * 求2个升序序列的中位数
 * 基本设计思想：
 *      分别求两个升序序列A,B的中位数，设为a，b
 *      1.若a=b，则a或b即为所求中位数，算法结束；
 *      2.若a<b，则舍弃序列A中较小的一半，同时舍弃序列B中较大的一半，要求两次舍弃的长度相等。
 *      3.若a>b，则舍弃序列A中较大的一半，同时舍弃序列B中较小的一半，要求两次舍弃的长度相等。
 *      在保留的两个升序序列中，重复上述三个步骤，直到两个序列中均只含一个元素为止，较小者即为所求的中位数。
 */
int M_Search(int A[], int B[], int n){
    // 分别表示序列A,B的首位数、末尾数和中位数
    int s1=0,d1=n-1,m1,s2=0,d2=n-1,m2;
    while (s1!=d1||s2!=d2){
        m1=(s1+d1)/2;
        m2=(s2+d2)/2;
        if (m1==m2){         // 条件1
            return A[m1];
        }
        if (A[m1]<B[m2]){   // 条件2
            if ((s1+d1)%2 == 0){ // 若元素个数为奇数
                s1=m1;
                d2=m2;
            }else{              // 元素个数为偶数
                s1=m1+1;
                d2=m2;
            }
        }else{
            if ((s1+d1)%2 == 0){ // 若元素个数为奇数
                d1=m1;
                s2=m2;
            }else{              // 元素个数为偶数
                d1=m1+1;
                s2=m2;
            }
        }
    }
}

/*
 * 假定采用带头结点的单链表保存单词，当两个单词有相同的后缀时，可共享相同的后缀存储空间，例如，“loading” 和“being”
 *
 */
typedef struct Node{
    char data;
    struct Node *next;
}SNode;

// 求链表长度的函数
int listlen(SNode *head){
    int len = 0;
    while (head->next != NULL){
        len++;
        head = head->next;
    }
    return len;
}

// 找出共同后缀的起始地址
SNode* find_addr(SNode *str1, SNode *str2){
    int m,n;
    SNode *p,*q;
    m = listlen(str1); // 求str1的长度
    n = listlen(str2); // 求str2的长度
    // 若m>n, 使p指向链表中的第m-n+1个节点
    for (p=str1;m>n;m--) {
        p = p->next;
    }
    // 若m<n, 使p指向链表中的第n-m+1个节点
    for (q=str2;m<n;n--) {
        q = q->next;
    }
    // 将指针p和q同步向后移动
    while (p->next!=NULL&&p->next!=q->next){
        p = p->next;
        q = q->next;
    }
    return p->next;
}
/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
//单调栈
int* nextGreaterElements(int* nums, int numsSize, int* returnSize){
    *returnSize = numsSize;
    if(numsSize == 0) return NULL;
    int* res = malloc(numsSize * sizeof(int));//为返回结果的数组开辟numsSize空间
    //把res数组全部初始化为-1.其中参数1：数组地址；参数2：初始化值；参数3：数组字节大小
    memset(res, -1, numsSize * sizeof(int));

    int top = 0, stack_asc[2 * numsSize];//单调栈用来存放索引值
    for(int i = 0; i < 2 * numsSize - 1; ++i){
        while(top > 0 && nums[stack_asc[top - 1]] < nums[i % numsSize]){//单调栈中元素个数>1，且栈顶元素值<当前元素值
            res[stack_asc[top - 1]] = nums[i % numsSize];//当前栈顶元素在nums中表示的索引/之后最近的一个大值修改为当前元素
            --top;//栈顶指针-1
        }
        stack_asc[top++] = i % numsSize;//当前元素的索引入栈
    }
    return res;
}


























int main() {
    int R[7] = {'a','b','c','d','e','f','g'};

    Converse(R,7,3);
    for (int i = 0; i < 7; i++) {
        printf("%c",R[i]);
    }
    return 0;
}
