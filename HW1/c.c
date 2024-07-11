#include <stdio.h>
double horner(int coef[],int n, double x);

int main(){
	double result;
	int i=0;
	int a[100]={0};
	for(i=0;i<100;i++){
		if(i%2==0){
			a[i]=1;
		}
		else{
			a[i]=-1;
		}
	}
	result=horner(a,100,1.00001);
	printf("%.20lf",result);
	return 0;
}

double horner(int coef[],int n,double x){
	int i;
	double result;
	result=coef[n-1];
	for(i=1;i<=n-1;i++){
		result=result*x+coef[n-1-i];
	}
	return result;
}
