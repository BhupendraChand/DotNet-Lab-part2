using System;
using System.Collections.Generic;
using System.Linq;


    internal class student
{ 
    class Students
{

}
internal class Student
{
    public int id { get; set; }
    public string name { get; set; }
    public string address { get; set; }
    public string campus { get; set; }



    static void Main(string[] args)
    {
        List<Student> students = new List<Student>
                {
                    new Student { id = 1, name =" Unique Neupane" , address = "Kirtipur" , campus ="Patan Multiple Campus"},
                    new Student { id = 2, name ="  Bhup Chand" , address = "Kirtipur" , campus ="RR Campus"},
                     new Student { id = 3, name =" Maun Kafel" , address = "Kirtipur" , campus ="PK Campus"},
                     new Student { id = 4, name =" Arjun Bhusal" , address = "Kirtipur" , campus ="RR Campus"},
                      new Student { id = 5, name ="Khemraj Neupane" , address = "Kirtipur" , campus ="Patan Multiple Campus"}
                };
        var selectStudent = students.Where(s => s.address == "Kirtipur" && s.campus == "Patan Multiple Campus").ToList();


        Console.WriteLine("Student lived in kirtipur and studied in Patan Multiple Campus:");
        foreach (var student in selectStudent)
        {
            Console.WriteLine($"ID: {student.id}, Name:{student.name}, Address:{student.address}, Campus:{student.campus}");
        }
        Console.ReadKey();
    }
}
}