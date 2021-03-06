#include <stdio.h>

// 输出一个高度h，输出一个高为h，上底边为h的梯形
void tixing(int h){
    int row = h;
    int col = h+2*(h-1);
    for (int i = 0; i < row; ++i) {
        for (int j = 0; j < col; ++j) {
            if (j < col-(h+2*i)){
                printf(" ");
            }else{
                printf("*");
            }
        }
        printf("\n");
    }
}













int main() {
//    tixing(4);
    int nums[] = {2,7,11,15};
    int* res[] = twoSum()
    return 0;
}
