using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//2.Create an Abstract class Student with Name, StudentId, Grade as members and also an abstract method Boolean Ispassed(grade)
//which takes grade as an input and checks whether student passed the course or not.  

//Create 2 Sub classes Undergraduate and Graduate that inherits all members of the student and overrides Ispassed() method

//For the UnderGrad class, if the grade is above 70.0, then isPassed returns true, otherwise it returns false.
//For the Grad class, if the grade is above 80.0, then isPassed returns true, otherwise returns false.

//Write appropriate functionalities


namespace Assignment3_Part2
{

    abstract class student
    {
        public string name;
        public string studentId;
        public double grade;
        // abstract method
        public abstract bool Ispassed(double grad);
    }

    class Undergraduate : student
    {
        public override bool Ispassed(double grad)
        {
            if (grad > 70.0f)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }

    class Graduate : student
    {
        public override bool Ispassed(double grad)
        {
            if (grad > 80.0f)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
    internal class Program
    {
        static void Main(string[] args)
        {
            Undergraduate A = new Undergraduate();
            Graduate B = new Graduate();

            Console.WriteLine("1 . Undergraduate");
            Console.WriteLine("2 . Graduate");

            int aa = Convert.ToInt32(Console.ReadLine());

            if (aa == 1)
            {
                Console.WriteLine("Enter the Name of Student");
                A.name = Console.ReadLine();
                Console.WriteLine("Enter the studentId");
                A.studentId = Console.ReadLine();
                Console.WriteLine("Enter the Grade of Student");
                A.grade = Convert.ToInt32(Console.ReadLine());

                Console.WriteLine("Result of Student is " + A.Ispassed(A.grade));
            }
            else if (aa == 2)
            {
                Console.WriteLine("Enter the Name of Student");
                B.name = Console.ReadLine();
                Console.WriteLine("Enter the studentId");
                B.studentId = Console.ReadLine();
                Console.WriteLine("Enter the Grade of Student");
                B.grade = Convert.ToInt32(Console.ReadLine());

                Console.WriteLine("Result of Student is " + B.Ispassed(B.grade));
            }
            else
            {
                Console.WriteLine("Wrong Input");
            }

            Console.ReadLine();

        }
    }
}