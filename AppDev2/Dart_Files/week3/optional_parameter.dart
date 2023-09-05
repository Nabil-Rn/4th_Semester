// optional parameter
test_param(n1, [s1]){
  print(n1);
  print(s1);
}
// optional parameter with assigned variable if it wasn't assigned
int pow(int x, [int y=2]){
  int r = 1;
  for (int i =0; i<y; i++){
    r *= x;
  }
  return r;
}
// optional argument with assigned variable if it wasn't assigned
named_argument(n1, {s1, s2}){
  print(n1);
  print(s1);
}
// optional argument with a default value
optional_argument(n1, {s1 = 12}){
 print(n1);
 print(s1);
}


void main(){
  print("optional parameter:");
  test_param(123, 100);
  test_param(123);
  print("\noptional parameter with assigned variable if it wasn't assigned:");
  print(pow(2,2));
  print(pow(2,4));
  print(pow(3));
  print("\nnamed argument");
  named_argument(123);
  named_argument(123, s1: 'hello');
  named_argument(123, s2: 'hello', s1: 'world');
  print("\noptional argument with a default value");
  optional_argument(123);
  print("\nOperators: ??, ??=, ?.");
  print("?? : ");
  print(0 ?? 1);
  print(1 ?? null);
  print(null ?? null);
  print(null ?? null ?? 2);
  print("\n??= : ");
  var value;
  print(value);
  value ??=5;
  print(value);
  value ??=6;
  print(value);
  print("\n?.= : ");
  var value2;
  print(value2?.toLowerCase()?.ToUpperCase());

}