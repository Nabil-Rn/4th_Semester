void main(){

  print("sum using For .. in loop : ");
  var a = [1,3,5,7,9];
  int i =0, sum = 0;
  sum = 0;
  for(var value in a){
    sum += value;
  }
  print(sum);

  print("sum using While loop: ");
  sum = 0;
  while(i < a.length){
    sum += a[i];
    i++;
  }
  print(sum);

print("sum using For loop: ");

sum = 0;
  for(var j=0; j<a.length;j++){
    sum += a[j];
  }

  print(sum);

print("sum using Do loop: ");
int k =0;
sum = 0;
do{
  sum += a[k];
  k++;
} while(k < a.length);

print(sum);

}