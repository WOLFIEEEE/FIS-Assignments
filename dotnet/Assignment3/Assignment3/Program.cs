using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


//1.Create an Employee class(Empid, Name, Address, City, Department, Salary) and define properties to read and write the values. Salary should not be editable outside employee class but it should be readable outside.
 
//- Then extend this class and create two derived classes called as ContractEmployee and PermanentEmployee

//- The contract employee will have perks as an additional property
//- The permanent employee will have no.ofleaves and Providentfund property additionally

//Task 1: Override the GetSalary Method in these 2 classes
//        For contract employee the new salary will be Salary + Perks
//        For permanent employee the new salary will be Salary-Providentfund

//Task 2: Create a Console application to use these classes
//        Develop a menu driven application to select the type of employee
//        Based on the user selection create the object and accept the details from the user, and display the salary of the employee

//Task : Incorporate relevant methods in the classes

namespace Assignment3
{

    class Employee
    {
        public int empid { get; set; }
        public string name { get; set; }
        public string address { get; set; }
        public string city { get; set; }
        public string Dep { get; set; }
        public int salary { get; set; }

        public virtual void getsalary()
        {
            Console.WriteLine("Actual salary of the EMployee will be" + this.salary);
        }
    }

    class PermanentEmployee : Employee
    {
        private int pfund { get; set; }

        public PermanentEmployee(int a, string b, string c, string d, string e, int f, int g)
        {
            this.empid = a;
            this.name = b;
            this.address = c;
            this.city = d;
            this.Dep = e;
            this.salary = f;
            this.pfund = g;
        }
        public override void getsalary()
        {
            Console.WriteLine("New salary for the EMployee will be" + (salary - pfund));
        }
    }

    class ContractEmployee : Employee
    {
        private int perks { get; set; }


        public ContractEmployee(int a, string b, string c, string d, string e, int f, int g)
        {
            this.empid = a;
            this.name = b;
            this.address = c;
            this.city = d;
            this.Dep = e;
            this.salary = f;
            this.perks = g;
        }
        public override void getsalary()
        {
            Console.WriteLine("New salary of the Employee will be " + (salary + perks));
        }
    }
    internal class Program
    {

        //public static ContractEmployee setcontract(int a, string b, string c, string d, string e, int f, int g)
        //{
        //    ContractEmployee emp = new ContractEmployee();
        //    emp.SetEmpid(a);
        //    emp.SetName(b);
        //    emp.SetAddress(c);
        //    emp.Setcity(d);
        //    emp.SetDep(e);
        //    emp.Setsal(f);
        //    emp.SetPerks(g);
        //    return emp;
        //}

        //public static PermanentEmployee setpermanent(int a, string b, string c, string d, string e, int f, int g)
        //{
        //    PermanentEmployee emp = new PermanentEmployee();
        //    emp.SetEmpid(a);
        //    emp.SetName(b);
        //    emp.SetAddress(c);
        //    emp.Setcity(d);
        //    emp.SetDep(e);
        //    emp.Setsal(f);
        //    emp.SetPfud(g);
        //    return emp;
        //}
        static void Main(string[] args)
        {
            Console.WriteLine("Enter Details of You Employee");

            Console.WriteLine("Enter the Emp ID");
            int emp_id = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter name of the EMployee");
            string name = Console.ReadLine();
            Console.WriteLine("Enter Address of Employee");
            string address = Console.ReadLine();
            Console.WriteLine("Enter the City of Employee");
            string city = Console.ReadLine();
            Console.WriteLine("Enter the Department of Employee");
            string dept = Console.ReadLine();
            Console.WriteLine("Enter the salary of the Employee");
            int salary = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Select the type of Emplpoyee");
            Console.WriteLine("1 . Contract Employee ");
            Console.WriteLine("2 . Permanent Employee");

            int a = Convert.ToInt32(Console.ReadLine()); ;

            if (a == 1)
            {
                Console.WriteLine("Enter the Perks Earned By Employee");
                int perks = Convert.ToInt32(Console.ReadLine());
                ContractEmployee obj = new ContractEmployee(emp_id, name, address, city, dept, salary, perks);
                obj.getsalary();
            }
            else if (a == 2)
            {
                Console.WriteLine("Enter the Pfund of the EMployee");
                int pfunds = Convert.ToInt32(Console.ReadLine());
                PermanentEmployee obj = new PermanentEmployee(emp_id, name, address, city, dept, salary, pfunds);
                obj.getsalary();
            }

            Console.ReadLine();
        }
    }
}
