#include <stdio.h>
#include <math.h>

int main(){
	double a,b,c;
	double x1,x2;
	scanf("%lf %lf %lf",&a,&b,&c);
	if(b>0){
		x1=(-b-sqrt(b*b-4*a*c))/(2*a);
		x2=c/(a*x1);
	}
	else{
		x1=(-b+sqrt(b*b-4*a*c))/(2*a);
		x2=c/(a*x1);
	}//here we ignore the condition that b==0
	printf("%.3e %.3e",x1,x2);
	return 0;
} 
