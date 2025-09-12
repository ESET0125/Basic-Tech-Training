

using System;
using System.Collections.Generic; 
using System.Globalization;      


public class BankAccount
{
    // Properties of a bank account
    public string AccountNumber { get; private set; } // Account number, read-only after creation
    public string AccountHolder { get; private set; } // Account holder's name, read-only after creation
    public decimal Balance { get; private set; }      

    // Constructor to initialize a new BankAccount object
    public BankAccount(string accountNumber, string accountHolder)
    {
        AccountNumber = accountNumber;
        AccountHolder = accountHolder;
        Balance = 0.0m; // Initialize balance to zero. 'm' suffix specifies a decimal literal.
    }

    // Method to deposit money into the account
    public void Deposit(decimal amount)
    {
        if (amount > 0)
        {
            Balance += amount;
            // Format the amount as currency based on the current system's culture
            Console.WriteLine($"Deposit of {amount.ToString("C", CultureInfo.CurrentCulture)} successful. New balance: {Balance.ToString("C", CultureInfo.CurrentCulture)}");
        }
        else
        {
            Console.WriteLine("Invalid deposit amount. Please enter a positive number.");
        }
    }

    // Method to withdraw money from the account
    public void Withdraw(decimal amount)
    {
        if (amount > Balance)
        {
            Console.WriteLine("Insufficient balance.");
        }
        else if (amount <= 0)
        {
            Console.WriteLine("Invalid withdrawal amount. Please enter a positive number.");
        }
        else
        {
            Balance -= amount;
            // Format the amount as currency based on the current system's culture
            Console.WriteLine($"Withdrawal of {amount.ToString("C", CultureInfo.CurrentCulture)} successful. New balance: {Balance.ToString("C", CultureInfo.CurrentCulture)}");
        }
    }

    // Method to get account details as a formatted string
    public string GetAccountDetails()
    {
        return $"Account Number: {AccountNumber}\n" +
               $"Account Holder: {AccountHolder}\n" +
               $"Current Balance: {Balance.ToString("C", CultureInfo.CurrentCulture)}";
    }
}

// The Program class contains the main entry point of the application
public class Program
{
    // The Main method is where the application execution begins
    public static void Main(string[] args)
    {
        // A dictionary to store all created bank accounts.
        // The key is the account number (string), and the value is a BankAccount object.
        Dictionary<string, BankAccount> accounts = new Dictionary<string, BankAccount>();

        // Main application loop
        while (true)
        {
            Console.WriteLine("\n--- Console Banking Application ---");
            Console.WriteLine("1. Create a new bank account");
            Console.WriteLine("2. Deposit money");
            Console.WriteLine("3. Withdraw money");
            Console.WriteLine("4. Display account details");
            Console.WriteLine("5. Exit");

            Console.Write("Enter your choice: ");
            string choice = Console.ReadLine(); // Read user's menu choice

            // Use a switch statement to handle different menu options
            switch (choice)
            {
                case "1": // Create a new account
                    Console.Write("Enter account number: ");
                    string accountNumber = Console.ReadLine();

                    // Check if an account with this number already exists
                    if (accounts.ContainsKey(accountNumber))
                    {
                        Console.WriteLine("Account with this number already exists. Please choose a different account number.");
                    }
                    else
                    {
                        Console.Write("Enter account holder's name: ");
                        string accountHolder = Console.ReadLine();
                        // Create a new BankAccount object and add it to the dictionary
                        accounts[accountNumber] = new BankAccount(accountNumber, accountHolder);
                        Console.WriteLine("Account created successfully!");
                    }
                    break;

                case "2": // Deposit money
                    Console.Write("Enter account number: ");
                    accountNumber = Console.ReadLine();

                    // Check if the account exists
                    if (accounts.ContainsKey(accountNumber))
                    {
                        Console.Write("Enter amount to deposit: ");
                        decimal depositAmount;
                        // Safely parse the user's input string to a decimal
                        if (decimal.TryParse(Console.ReadLine(), NumberStyles.Currency, CultureInfo.CurrentCulture, out depositAmount))
                        {
                            accounts[accountNumber].Deposit(depositAmount);
                        }
                        else
                        {
                            Console.WriteLine("Invalid amount. Please enter a valid number.");
                        }
                    }
                    else
                    {
                        Console.WriteLine("Account not found.");
                    }
                    break;

                case "3": // Withdraw money
                    Console.Write("Enter account number: ");
                    accountNumber = Console.ReadLine();

                    // Check if the account exists
                    if (accounts.ContainsKey(accountNumber))
                    {
                        Console.Write("Enter amount to withdraw: ");
                        decimal withdrawalAmount;
                        // Safely parse the user's input string to a decimal
                        if (decimal.TryParse(Console.ReadLine(), NumberStyles.Currency, CultureInfo.CurrentCulture, out withdrawalAmount))
                        {
                            accounts[accountNumber].Withdraw(withdrawalAmount);
                        }
                        else
                        {
                            Console.WriteLine("Invalid amount. Please enter a valid number.");
                        }
                    }
                    else
                    {
                        Console.WriteLine("Account not found.");
                    }
                    break;

                case "4": // Display account details
                    Console.Write("Enter account number: ");
                    accountNumber = Console.ReadLine();

                    // Check if the account exists
                    if (accounts.ContainsKey(accountNumber))
                    {
                        Console.WriteLine("\n--- Account Details ---");
                        Console.WriteLine(accounts[accountNumber].GetAccountDetails());
                    }
                    else
                    {
                        Console.WriteLine("Account not found.");
                    }
                    break;

                case "5": // Exit the application
                    Console.WriteLine("Thank you for using the banking application. Goodbye!");
                    return; // Exit the Main method, which terminates the application

                default: // Handle invalid menu choices
                    Console.WriteLine("Invalid choice. Please select a valid option from the menu.");
                    break;
            }
        }
    }
}
