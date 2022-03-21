class Perimeter{
int length,breadth;
// default constructor
Perimeter(){
length=0;
breadth=0;
}
//parameterized constructor
Perimeter(int x,int y){
length=x;
breadth	=y;
}

void cal_perimeter(){
int peri;
peri=2*(length+breadth);
System.out.println("The Perimeter of the rectangle is: "+peri);

}
}

class ExConstrutor{
public static void main(String args[]){
int area1,area2;
Perimeter p1=new Perimeter();
Perimeter p2=new Perimeter(5,10);
p1.cal_perimeter();
p2.cal_perimeter();
}
}
