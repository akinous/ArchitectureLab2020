#include <stdio.h>

int main( int argc, char* argv[])
{
    int i;
    
   
    

    printf("All odd numbers from 1 to 1000 are: \n");

   
    for(i=1; i<=1000; i++)
    {
        
        if(i%2!=0)
        {
            printf("%d\n",i);
        }
    }

    return 0;
}
