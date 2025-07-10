/*2.Create a superclass Animal with a method makeSound(). 
   Create two subclasses Dog and Cat that override the method.*/

package ANP_D1485;
public class Animal {   //Superclass
	void makeSound() {
		System.out.println("Some  animal sound");
	}
}
class Dog extends Animal {   //Subclass: Dog
	@Override
	void makeSound() {
		System.out.println("Woof!");
	}
}
class Cat extends Animal {   //Subclass: Cat
	@Override
	void makeSound() {
		System.out.println("Meow!");
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Animal myDog = new Dog();
		Animal myCat = new Cat();

		myDog.makeSound();  // Output: Woof!
		myCat.makeSound();  // Output: Meow!
	}
}



    output:- Woof!
	     Meow!