package ANP_D1485;

import java.util.Stack;
public class Stack_Example {
	public static void main(String[] args) { 
		// TODO Auto-generated method stub
		Stack<Integer> sl= new Stack<Integer>();
		sl.add(1);
		sl.add(2);
		sl.add(3);
		sl.add(4);
		sl.add(5);
		sl.add(6);
		sl.add(7);
		sl.add(8);
		sl.add(9);
		sl.add(10);
		System.out.println ("Int element="+sl);

		System.out.println ("Remove last  element="+sl.removeLast());

		System.out.println ("Remove last  element="+sl.removeLast());

		System.out.println ("Remove last  element="+sl.removeLast());

		System.out.println ("Remove last  element="+sl.removeLast());

		System.out.println ("Int element="+sl);
	}
}
/*OUTPUT:-Int element=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
		Remove last  element=10
		Remove last  element=9
		Remove last  element=8
		Remove last  element=7
		Int element=[1, 2, 3, 4, 5, 6]*/



