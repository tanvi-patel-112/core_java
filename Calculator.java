/*1.Write a Java program to demonstrate method overloading by 
 creating a class Calculator with multiple add() methods 
 that accept different parameter types*/

package ANP_D1485;

public class Calculator {
	public int add(int a, int b) // Method to add two integers
	{
		return a + b;
	}
	public double add(double a, double b) //Method to add two double values
	{
		return a + b;
	}
	public int add(int a, int b, int c) // Method to add three integers
	{
		return a + b + c;
	}
	public double add(int a, double b) // Method to add an integer and a double
	{
		return a + b;
	}
	public double add(double a, int b) // Method to add a double and an integer
	{
		return a + b;
	}
	public static void main(String[] args) {
		 Calculator obj =new Calculator();

		// Demonstrating method overloading
		System.out.println("add(int a, int b): " + obj.add(10, 20));
		System.out.println("add(double, double): " + obj.add(5.5, 4.5));
		System.out.println("add(int, int, int): " + obj.add(1, 2, 3));
		System.out.println("add(int, double): " + obj.add(10, 3.5));
		System.out.println("add(double, int): " + obj.add(2.5, 5));
	}
}


/*OUTPUT :- add(int a, int b): 30
	    add(double, double): 10.0
            add(int, int, int): 6
	    add(int, double): 13.5
 	    add(double, int): 7.5 */
 