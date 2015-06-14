int test1(){
  return 1;
}

import fun2;
import fun3;

void main(){
  assert(test1()==1);
  assert(test2()==2);
  assert(test3()==3);
}