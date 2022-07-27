using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


//2. 2.Create a class called student which has data members like rollno, name, class, SEM, branch,int[] marks = new int marks [5] (marks of 5 subjects )

//-Write a method called displayresult, which should calculate the average marks
//-If marks of any one subject is less than 35 print result as failed
//-If marks of all subject is >35 but average is < 50 then also print result as failed
//-If avg > 50 then print result as passed.
//-Pass the details of student like rollno, name, class, SEM, branch in constructor
//- Write a Display Data method to display all values.

namespace Assignment2_part2
{
    public class Student
    {
        int Roll_No;
        string Name;
        string Class;
        int Sem;
        //string Branch;
        int[] Marks = new int[5];


        public Student()
        {
            Console.WriteLine("Enter Name of the Student:");
            this.Name = Console.ReadLine();
            Console.WriteLine("Enter RollNo:");
            this.Roll_No = Int32.Parse(Console.ReadLine());
            Console.WriteLine("Enter Class:");
            this.Class = Console.ReadLine();
            Console.WriteLine("Enter Sem:");
            this.Sem = Char.Parse(Console.ReadLine());

            Console.WriteLine("Enter Marks Of Each Subject");

            for (int i = 0; i < 5; i++)
            {
                this.Marks[i] = Int32.Parse(Console.ReadLine());
            }
        }

        public void Display()
        {
            Console.WriteLine("Name : " + Name);
            Console.WriteLine("Roll Number : " + Roll_No);
            Console.WriteLine("Class : " + Class);
            Console.WriteLine("Sem : " + Sem);
            Console.Write("Result : ");
            Boolean t = false;
            int total = 0;
            int average;

            for (int i = 0; i < 5; i++)
            {
                total += Marks[i];

                if (Marks[i] < 35)
                {
                    t = true;
                }
            }

            average = total / 5;

            if (t || average < 50)
            {
                Console.WriteLine("Fail");
            }
            else
            {
                Console.WriteLine("Pass");
            }
        }
    }

    internal class Program
    {
        static void Main(string[] args)
        {
            Student stu = new Student();
            stu.Display();

            Console.ReadLine();


        }
    }
}
