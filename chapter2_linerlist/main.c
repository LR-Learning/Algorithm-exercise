#include <stdio.h>
#include <stdlib.h>

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
int main() {
    int R[7] = {'a','b','c','d','e','f','g'};

    Converse(R,7,3);
    for (int i = 0; i < 7; i++) {
        printf("%c",R[i]);
    }
    return 0;
}
