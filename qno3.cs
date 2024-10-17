using System;
using System.Collections.Generic;
using System.Linq;

internal class qno3
{
    public class Student
    {
        public int id;
        public string name, address, cname;
        public Student(int id,  string name, string address, string cname)
        {
            this.id = id;
            
            this.name = name;
            this.address = address;
            this.cname = cname;
        }
    }
    internal class Qno3
    {
        public static void Main(string[] args)
        {
            List<Student> slist = new List<Student>();
            slist.Add(new Student(1, "Bhupendra", "Dhangadhi", "RR Campus"));
            slist.Add(new Student(2,  "Pratigya", "Doti", "P.K Campus"));
            slist.Add(new Student(3,  "Pradip", "Kirtipur", "Patan Multiple Campus"));
            slist.Add(new Student(4,  "Neha", "Kirtipur", "Patan Multiple Campus"));

            var result = slist.Where(stud => stud.address == "Kirtipur" && stud.cname == "Patan Multiple Campus");
            Console.WriteLine("Student Information:");
            foreach (var s in result)
            {
                Console.WriteLine(s.id + " " + s.name + " " + s.address + " " + s.cname);
            }
            Console.ReadKey();
        }
    }
}

