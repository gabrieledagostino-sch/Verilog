#include <stdio.h>
#include <stdlib.h>
#include <time.h>

typedef enum state {S0,S1,S2,S3} State;

int   newStateS0(int x);
int   newStateS1(int x);
int   newStateS2(int x);
int   newStateS3(int x);
int     outputS0(int x);
int     outputS1(int x);
int     outputS2(int x);
int     outputS3(int x);

int (*newState[4])(int) = {newStateS0,newStateS1,newStateS2,newStateS3};
int (*output[4])(int) =   {outputS0  ,outputS1  ,outputS2  ,outputS3  };

int main()
{

    int x;
    int state=0;

    while(1)
    {
        printf("inserire 1 o 0: ");
        scanf("%d", &x);
        x = (x != 0);
        int nextState = newState[state](x);
        int out = output[state](x);
        state = nextState;
        printf("%d\n",out);
    }

    return 0;
}

int       newStateS0(int x)
{
    return x==0?S0:S1;
}
int       newStateS1(int x)
{
    return x==0?S1:S2;
}
int       newStateS2(int x)
{
    return x==0?S2:S3;
}
int       newStateS3(int x)
{
    return x==0?S3:S0;
}
int         outputS0(int x)
{
    return x==0?S0:S1;
}
int         outputS1(int x)
{
    return x==0?S1:S2;
}
int         outputS2(int x)
{
    return x==0?S2:S3;
}
int         outputS3(int x)
{
    return x==0?S3:S0;
}