import java.util.Scanner;

class Rectangle{
static int i,j;
public static void main(String args[]){


Scanner sc = new Scanner(System.in);
System.out.print("Enter the length of Rectangle: ");
double length = sc.nextDouble();
System.out.print("Enter the width of Rectangle: ");
double width = sc.nextDouble();
double area=width*length;
System.out.println("Area of rectangle="+area);

}
}
