using System;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
internal class qno5
{ 
       public static void Main(string[] args)
    {
        MySqlConnection conn = new MySqlConnection("server=localhost;database=bank;uid=root;password='';");
        conn.Open();

        string sql = "INSERT INTO customer (`id`, `account_no`, `name`, `address`, `deposit_amount`) " +
                         "VALUES ( '1','1234','Bhupendra Chand', 'Dhangadhi', 20000), " +
                     "('2','2345', 'Romeo', 'Kathmandu', 1600), " +
                     "('3','5678', 'David', 'Pokhara', 250)";
        MySqlCommand cmd = new MySqlCommand(sql, conn);
        int row = cmd.ExecuteNonQuery();
        if (row > 0)
            Console.WriteLine(row + " rows inserted.");
        else
            Console.WriteLine("Insertion failed");

        string sql2 = "DELETE FROM customer WHERE deposit_amount < 500";
        MySqlCommand cmd2 = new MySqlCommand(sql2, conn);
        int row2 = cmd2.ExecuteNonQuery();
        if (row2 > 0)
            Console.WriteLine(row2 + " rows deleted.");
        else
            Console.WriteLine("Deletion failed");

        conn.Close();
        Console.ReadKey();
    }
}

