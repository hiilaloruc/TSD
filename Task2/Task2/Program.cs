using System;
using System.Collections.Generic;
using System.Linq;

namespace Task2
{
    public class book
    {
        public string name;
        public int year;
        public book(string name, int year)
        {
            this.name = name;
            this.year = year;
        }
    }

    class Program
    {
        static void Add_Book(int index, book obj, List<book> list)
        {
            list.Insert(index, obj);
        }
        static book Get_Book(int index, List<book> list)
        {
            return list[index];
        }
        static bool IsEmpty_Book(List<book> list)
        {
            if(list.Count == 0)
            {
                return true;
            }
            return false;
        }

        static void Main(string[] args)
        {
            
           //First -> LeapYears
           int[] someYears = new int[] { 2000, 2001, 1994, 1900, 2024, 2025, 2016, 2027, 2028, 1902 };
           IEnumerable<int> leapYears = someYears.Where(x =>(x % 4 == 0 && x % 100 != 0 )|| (x % 400 == 0) );

           Console.WriteLine("Leap years :");
           foreach (int year in leapYears) Console.WriteLine(year);

            //Second
            book b1 = new book("da Vinci Code",2003);
            book b2 = new book("Angels & Demons", 2000);
            book b3 = new book("Digital Fortress", 1998);

            List<book> myBookList= new List<book>();
            myBookList.Add(b1);
            myBookList.Add(b2);

            try
            {
                Add_Book(1, b3, myBookList); // add operation
                Console.WriteLine(Get_Book(2, myBookList).name); //get operation
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            Console.WriteLine(IsEmpty_Book(myBookList)); // IsEmpty operation


        }
        

        
    }

}
