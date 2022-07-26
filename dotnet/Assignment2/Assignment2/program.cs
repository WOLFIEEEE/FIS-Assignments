using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignment2
{
    class Account
    {
        int acc_no;
        string cust_name;
        string acc_type;
        int amount;

        public Account(int acc_no, string cust_name, string acc_type, int amount)
        {
            this.acc_no = acc_no;
            this.cust_name = cust_name;
            this.acc_type = acc_type;
            this.amount = amount;
        }

        public void deposit(int dep)
        {
            amount += dep;

            Console.WriteLine("Amount in your bank account is :- " + amount);
        }

        public void withdrawel(int wid)
        {
            if (amount < wid)
            {
                Console.WriteLine("Not Enought account in Bank , Your account balance is :- ", amount);
            }
            else
            {
                amount -= wid;
                Console.WriteLine("Amount left in your bank account is :- " + amount);
            }
        }

        public void show()
        {
            Console.WriteLine("Account No.:-  " + acc_no);
            Console.WriteLine("Name:-  " + cust_name);
            Console.WriteLine("Account type:- " + acc_type);
            Console.WriteLine("Amount Left  :-  " + amount);
        }
    }
    internal class program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter Account Number");
            int acc_no = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter Account Holder name");
            string cust_name = Convert.ToString(Console.ReadLine());
            Console.WriteLine("Enter Account Type");
            string acc_type = Convert.ToString(Console.ReadLine());
            Console.WriteLine("Enter Amount you want to add");
            int amount = Convert.ToInt32(Console.ReadLine());

            Account obj1 = new Account(acc_no, cust_name, acc_type, amount);
            Console.WriteLine("What would you Like to Perfomr ? ");
            Console.WriteLine("1 . Deposit");
            Console.WriteLine("2 . Withdrawel");
            Console.WriteLine("3 . Show Detials");
            Console.WriteLine("4 . Exit the Program");


            int check = 0;

            while (check == 0)
            {
                int n = Convert.ToInt32(Console.ReadLine());

                switch (n)
                {
                    case 1:
                        Console.WriteLine("How much Money You want to Deposit");
                        int am = Convert.ToInt32(Console.ReadLine());
                        obj1.deposit(am);
                        obj1.show();
                        break;
                    case 2:
                        Console.WriteLine("How much Money You want to Withdraw");
                        int amw = Convert.ToInt32(Console.ReadLine());
                        obj1.withdrawel(amw);
                        obj1.show();
                        break;
                    case 3:
                        Console.WriteLine("Details of of the Account");
                        obj1.show();
                        break;
                    case 4:
                        Console.WriteLine("Exiting the Program");
                        check = 1;
                        break;
                    default:
                        Console.WriteLine("Wrong Input");
                        break;

                }
            }


        }
    }
}
