#include <stdio.h>
//OpenMP header
#include <omp.h>

int main()
{
	#pragma omp parallel                   
	{
		printf("Hello World... from thread = %d\n", 
        	omp_get_thread_num());
	}
	printf("Hello\n");
}