#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(int argc, char const *argv[])
{
	if( argc == 1 ) {
		printf("'%s' prints command line arguments in random order.\nIn stdin specify how many times you want, or it will give it argc times.\n", argv[0]);
		exit(1);
	}


	// number of randoms
	int n = 0; 
	scanf("%d",&n);

	--argc; // not to take argv[0]

	if(n <= 0) // n not provided, take from argc
		n = argc;

	// initialize randomizer
	time_t t;
	srand((unsigned)time(&t));


	for (int i = 0; i < n; ++i)
	{
		int r = rand()%argc + 1; // + 1 is to omit argv[0]
		printf("%s ", argv[r]);
	}
	// printf("\n");
	return 0;
}