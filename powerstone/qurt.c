#include "common.h"


double fabs(double x) {
  return x < 0 ? -x : x;
}


double sqrt(double val) {
  double x = val/10;
  double dx;
  double diff;
  double min_tol = 0.00001;
  int i, flag;
  flag = 0;
  if( val == 0 ) {
    x = 0;
  }  
  else {
    for(i=1; i<20; i++) {
      if( !flag ) {
	dx = (val - (x*x)) / (2.0 * x);
	x = x + dx;
	diff = val - (x*x);
	if( fabs(diff) <= min_tol ) flag = 1;
      }
      else 
	x =x;
    }
  }
  return x;
}

int qurtf(double a[], double x1[], double x2[])
{
  double d, w1, w2;
  if(a[0] == 0.0)
    return (999);
  d = a[1] * a[1] - 4 * a[0] * a[2];
  w1 = 2.0 * a[0];
  w2 = sqrt(fabs(d));
  if(d > 0.0)
    {
      x1[0] = (-a[1] + w2) / w1;
      x1[1] = 0.0;
      x2[0] = (-a[1] - w2) / w1;
      x2[1] = 0.0;
      return (0);
    } 
  else if(d == 0.0)
    {
      x1[0] = -a[1] / w1;
      x1[1] = 0.0;
      x2[0] = x1[0];
      x2[1] = 0.0;
      return (0);
    } 
  else
    {
      w2 /= w1;
      x1[0] = -a[1] / w1;
      x1[1] = w2;
      x2[0] = x1[0];
      x2[1] = -w2;
      return (0);
    }
}
NOP(){}
int main()
{
  double a[3], x1[2], x2[2];
  int result;
  NOP();
  a[0] = 1.75;
  a[1] = -3.2;
  a[2] = 2.45;
  qurtf(a, x1, x2);
  result = (int) x1[0];
  a[0] = 1.5;
  a[1] = -2.5;
  a[2] = 1.5;
  qurtf(a, x1, x2);
  result += (int) x1[1];
  a[0] = 1.8;
  a[1] = -4.275;
  a[2] = 8.31;
  qurtf(a, x1, x2);
  result -= (int) x1[1];
  if(result != -1)
    {
      puts("qurt: fail\n");
	  return 1;
    } 
  else
    {
      puts("qurt: success\n");
	  return 0;
    }
}
