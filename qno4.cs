using System;
using System.Collections.Generic;
using System.Linq;

    internal class qno4
{ 
        public static void Main(string[] args)
        {
            int[] data = { 15, 3, 34, 45, 7, 89, 105, 20 };
            int sum = data.Sum();
            int min = data.Min();
            int max = data.Max();
            double avg = data.Average();
            int cnt = data.Count();
            Console.WriteLine("The sum of element =" + sum);
            Console.WriteLine("The minimum element =" + min);
            Console.WriteLine("The maximum element =" + max);
            Console.WriteLine("The average element =" + avg);
            Console.WriteLine("The count element =" + cnt);
            Console.ReadKey();

        }
    }
