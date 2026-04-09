#include<string.h>
#include<stdio.h>
#define MAX 100

struct symbol{
	char name[20];
	char type[10];
}table[MAX];

int count = 0;

void insert(char name[], char type[]){
	strcpy(table[count].name,name);
	strcpy(table[count].type,type);
	count++;
}

void display(){
	printf("\n Symbol Table : \n");
	printf("name \t type \n");
	for(int i = 0;i<count;i++){
		printf("%s\t%s\n",table[i].name,table[i].type);
	}
}

int main(){
	insert("a","int");
	insert("b","float");
	display();
	return 0;
}
