/*Write Java Program to find maximum number using ternary operator.*/
package ANP_D1485;
 
import java.util.Scanner;

public class MaxTernary {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
	         
	        System.out.print("Enter first number: ");
	        int a = sc. nextInt();

	        System.out.print("Enter second number: ");
	        int b = sc. nextInt();

	        int max = (a > b) ? a : b;

	        System.out.println("Maximum number is: " + max);
	    }
}	
	

/*OUTPUT:-  Enter first number: 30
 	    Enter second number: 21
	    Maximum number is: 30*/
	
