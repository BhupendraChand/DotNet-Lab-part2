using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
    internal class Linkexample
    {
    public static void Main(string[] args)
    {
        int[] arr = new int[] { 30, 40, 42, 46, 33, 98 };
        IEnumerable<int> result = from num in arr where num > 40 select num;
        Console.WriteLine("The Number greater than 40 are =");
        foreach (int num in result)
            Console.WriteLine(num);
        Console.ReadKey();
    }
}
