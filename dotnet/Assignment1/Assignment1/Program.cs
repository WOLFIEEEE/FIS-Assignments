using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


//Assignments

//Arrays 

//1. Write a  Program to assign integer to an array  and then print the following
//a.	 Average value of Array elements
//b.	Minimum and Maximum value in an array 

//2.	Write a program in C# to accept ten marks and display the 
//		following
//a.	Total
//b.	Average
//c.	Minimum marks
//d.	Maximum marks
//e.	Display marks in ascending order
//f.	Display marks in descending order

//3. Write a C# program which accepts marks of 5 students for C#,HTML and Sql (3 subjects),calculates the average and prints result as passed or failed
//If avg < 50 then failed else passed. 


//Strings Assignment (use string class functions)

//1.Write a program in C# to accept a word from the user and display the length of it.
//2.	Write a program in C# to accept a word from the user and display the reverse of it. 
//3.	Write a program in C# to accept two words from user and find out if they are same. 

namespace Assignment1
{
    class Program
    {
        static void Main(string[] args)
        {
            question1();
            question2();
            question3();
            stringmanipulation();

        }

        public static void question1()
        {
            int[] array = { 1, 4, 5, 2, 3, 10, 5, 6 };

            int size = array.Length;

            int sum = 0;
            for (int i = 0; i < size; i++)
            {
                sum += array[i];
            }

            Array.Sort(array);

            Console.WriteLine("Average of element is :- " + sum / size);
            Console.WriteLine("Minimum Number of array is :- " + array[0]);
            Console.WriteLine("Maximum Number of array is :- " + array[size - 1]);


            Console.ReadLine();

        }

        public static void question2()
        {
            int[] array = new int[10];

            int sum = 0;
            int size = 10;
            for (int i = 0; i < 10; i++)
            {
                Console.WriteLine("Enter element : {0}", (i + 1));
                array[i] = Convert.ToInt32(Console.ReadLine());
                sum += array[i];
            }

            Array.Sort(array);

            Console.WriteLine("Total of Marks is :- " + sum);
            Console.WriteLine("Average of Makrs is :- " + sum / size);
            Console.WriteLine("Minimum of Makrs is :-" + array[0]);
            Console.WriteLine("Maximum of Marks is :- " + array[size - 1]);

            Console.WriteLine("array is ascending Order is :- ");

            for (int i = 0; i < size; i++)
            {
                Console.Write(" " + array[i]);
            }

            Console.Write("\n");

            Console.WriteLine("array in descending order is :- ");

            for (int i = size - 1; i >= 0; i--)
            {
                Console.Write(" " + array[i]);
            }

            Console.Write("\n");

            Console.ReadLine();

        }

        public static void question3()
        {
            int[,] array = new int[5, 3];

            string[] sub = { "C#", "HTML", "SQL" };
            int[] avg = new int[5];
            for (int i = 0; i < 5; i++)
            {
                int total = 0;
                for (int j = 0; j < 3; j++)
                {
                    Console.Write("Write mark for Student " + (i + 1) + " for subject " + sub[j] + ":-");
                    array[i, j] = Convert.ToInt32(Console.ReadLine());
                    total += array[i, j];
                }

                avg[i] = total / 5;
            }

            for (int i = 0; i < 5; i++)
            {
                Console.Write("Student number {0} has", i);
                if (avg[i] < 50)
                {
                    Console.WriteLine(" Failed");
                }
                else
                {
                    Console.WriteLine(" Passed");
                }
            }

            Console.ReadLine();

        }

        public static void stringmanipulation()
        {

            Console.WriteLine("Enter the Word : - ");
            string a = Console.ReadLine();

            Console.WriteLine("Length of string is " + a.Length);

            string b = new string(a.Reverse().ToArray());

            Console.WriteLine("Reverse of STring is " + b);

            Console.WriteLine("Enter first word of Comparison : - ");

            string c = Console.ReadLine();

            Console.WriteLine("Enter second word for Comparison :- ");
            string d = Console.ReadLine();

            if (String.Equals(c, d))
            {
                Console.WriteLine("strings are equal");
            }
            else
            {
                Console.WriteLine("string aren't equal");
            }

            Console.ReadLine();




        }
    }
}