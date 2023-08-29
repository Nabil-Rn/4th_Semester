
fehtoCel(double feh){
  return (feh-32)/1.8;
}

void main(){
  double temp = 86;

  print("${temp.toStringAsFixed(1)}F = ${fehtoCel(temp).toStringAsFixed(1)}");

}