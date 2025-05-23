#include <stdio.h>
int main() {
	int c;
    while ( ( c = getchar()) != EOF )
		printf("%02x ", c);
}
