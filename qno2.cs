using System;
using System.Collections.Generic;
using System.Linq;

    internal class qno2 { 
    public class Employee
{
    public int eid;
    public string name, address;
    public Employee(int eid, string name, string address)
    {
        this.eid = eid;

        this.name = name;
        this.address = address;

    }
}
internal class Qno2
{
    public static void Main(string[] args)
    {
        List<Employee> elist = new List<Employee>();
        elist.Add(new Employee(1, "Bhupendra", "Doti"));
        elist.Add(new Employee(2, "Neha", "Nepaljung"));
        elist.Add(new Employee(3, "Pratigya", "Dhangadhi"));
        elist.Add(new Employee(4, "Pradip", "Illam"));
            Console.WriteLine("Employee  in descending order =");
        var res = elist.OrderByDescending(e => e.name);
        foreach (Employee emp in res)
        {
            Console.WriteLine("eid" + " " + emp.eid + "  " + "name" + " " + emp.name + " " + "address" + " " + emp.address + " ");

        }
        Console.ReadKey();
    }
}
}


