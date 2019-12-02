#include<stdio.h>
#include<stdlib.h>
int  main(void){
	char * string=(char*)malloc(50000);
	printf("my name is CHENZIFANG\n");
	printf("my student id is 2017051020\n");
	FILE* fp = fopen("/media/text.txt","r");
	while(fgets(string,65536,fp)!=NULL){
	printf("%s",string);
	}
	return 0;
}
