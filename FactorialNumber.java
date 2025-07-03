/*2. Write a Java program to calculate factorial of given number. eg.3!=3*2*1=6*/


package ANP_D1485;

import java.util.Scanner;

public class FactorialNumber {

	public static void main(String[] args) {
		
		
		
		        Scanner scanner = new Scanner(System.in);
		        
		        System.out.print("Enter a number: ");
		        int number = scanner.nextInt();
		        long factorial = 1;
		        
		        for(int i = 1; i <= number; i++) {
		            factorial *= i;
		        }
		        
		        System.out.println("Factorial of " + number + " is: " + factorial);
			}
				}	
 /*OUTPUT:- Enter a number: 3
			Factorial of 3 is: 6*/
