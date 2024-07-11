#include <stdio.h>
#include <math.h>

int main(){
	double a,b;
	double result;
	scanf("%lf %lf",&a,&b);
	result=b*b/(-a+sqrt(a*a+b*b));
	printf("%.3e",result);
	return 0;
}
