using System.Globalization;

namespace BankingApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello, World!");
            // A dictionary to store accounts, with the account number as the key
            Dictionary<string, Program> accounts = new Dictionary<string, Program>();
            while (true)
            {

                Console.WriteLine("1. Create a new bank account");
                Console.WriteLine("2. Deposit money");
                Console.WriteLine("3. Withdraw money");
                Console.WriteLine("4. Display account details");
                Console.WriteLine("5. Exit");

                Console.Write("Enter your choice: ");
                string choice = Console.ReadLine();

                switch (choice)
                {
                    case "1":
                        Console.Write("Enter account number: ");
                        string accountNumber = Console.ReadLine();
                        if (accounts.ContainsKey(accountNumber))
                        {
                            Console.WriteLine("Account with this number already exists.");
                        }
                        else
                        {
                            Console.Write("Enter account holder's name: ");
                            string accountHolder = Console.ReadLine();
                            accounts[accountNumber] = new (accountNumber, accountHolder); // This line is fixed
                            Console.WriteLine("Account created successfully!");
                        }
                        break;
                }
            }
        }
    }
}
