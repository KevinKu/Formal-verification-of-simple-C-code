#include <stdio.h>
#include <stdlib.h>


void f(void);

void g(void);



int main()
{
	f();

	g();

	return 0;
}

void f()
{
	unsigned int max = 0;

	if(max < 82)
		{
			max = 82;
		}

	if(max < 43)
		{
			max = 43;
		}

	printf("max=%d\n",max);
}


void g()
{
	unsigned int max = 0;
	unsigned int a[3] ;
	
	a[0] = 45;
	a[1] = 36;
	a[2] = 12;

	unsigned int i = 0;

	while(i < 3)
		{
			if(max < a[i])
				{
					max = a[i];
				}
			i = i+1;
		}

	printf("max=%d\n",max);
}
