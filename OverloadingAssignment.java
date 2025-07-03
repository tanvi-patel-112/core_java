/*Write a Java program to calculate area using method overloading for the following shapes:

		Circle (radius)

		Rectangle (length, breadth)

		Triangle (base, height)

		Use the method area() with different parameters.*/

package ANP_D1485;

public class OverloadingAssignment {

    //  area of a circle
    public double area(double radius) {
        return Math.PI * radius * radius;
    }

    //  area of a rectangle
    public double area(double length, double breadth) {
        return length * breadth;
    }

    //  area of a triangle
    public double area(int base, int height) {
        return 0.5 * base * height;
        
    }

    public static void main(String[] args) {
        OverloadingAssignment obj = new OverloadingAssignment();

        // Circle: radius = 5.0
        double circleArea = obj.area(5.0);
        System.out.println("Area of Circle: " + circleArea);

        
        // Rectangle: length = 4.0, breadth = 6.0
        double rectangleArea = obj.area(4.0, 6.0);
        System.out.println("Area of Rectangle: " + rectangleArea);

        
        // Triangle: base = 5, height = 3
        double triangleArea = obj.area(5, 3);
        System.out.println("Area of Triangle: " + triangleArea);
    }
}

     /* OUTPUT:- Area of Circle: 78.53981633974483
				Area of Rectangle: 24.0
				Area of Triangle: 7.5*/

	
		
