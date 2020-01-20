#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int hora, min, seg, x=1000;
	//1000 milisegundos
	
	for(hora=0; hora<24; hora ++) {
		for(min=0; min<60; min++) {
			for(seg=0; seg<60; seg ++ ) {
				printf("%02i:%02i:%02i\r", hora, min,seg );
				Sleep(x);
			}			
		}
	}
	
	system("pause");
	
	return 0;
}

