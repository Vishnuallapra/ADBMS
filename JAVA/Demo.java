class Distance{
int m=10;
int c;
void getData(){
m=5;
c=10;
}
}
class Demo{
public static void main(String args[]){
Distance ob=new Distance();
ob.getData();
System.out.println("Meter="+ob.m);
System.out.println("CentiMeter="+ob.c);
}
}
