using System;
using System.Collections.Generic;
using System.Linq;

internal class qno1
{
    public static void Main(string[] args)
    {
        List<int> num = new List<int>() { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 };
        IEnumerable<int> res = from n in num where n % 2 != 0 && n % 3 == 0 select n;

        Console.WriteLine("The odd numbers divisible by 3 from the list are =");
        foreach (int i in res)
        {
            Console.WriteLine(i);
        }

        Console.ReadKey();
    }
}