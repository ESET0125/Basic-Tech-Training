using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;

namespace Cass_Dome
{
    internal class Student
    {
        int student_id;
        string name;
        int age;
        string contact_no;
        String emailID;

       public void studentDetails()
        {
            student_id = 1;
            name = "alex";
            age = 22;
            contact_no = "+91 9934024598";
            emailID = "notalex@gmail.com";
        }

    
        public void displayDetails()
        {
            Console.WriteLine("Displaying student details");
            Console.WriteLine(student_id);
            Console.WriteLine(name);
            Console.WriteLine(age);
            Console.WriteLine(contact_no);
            Console.WriteLine(emailID);

        }

        public Student(int student_id, string name, int age, string contact_no, string emailID)
        {
            //this.student_id = student_id;
            //this.name = name;
            //this.age = age;
            //this.contact_no = contact_no;
            //this.emailID = emailID;

            student_id = id;
            name = std_name;
        }

        public void totalMarks()
        {
            Console.WriteLine("calling Student");

        }
        public void average()
        {
            Console.WriteLine("calling Student");

        }

    }
}
