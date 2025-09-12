// Define a namespace to organize related code.
namespace ConsoleApp1
{
    // Define the Program class, which contains the entry point for the application.
    internal class Program
    {

        // Declare a static integer variable 'sum' to store the sum of two numbers.
        // It is static so it can be accessed by both the Main and Addition methods.
        static int sum;

        // The Main method is the entry point of the application.
        static void Main(string[] args)
        {
            // Declare local integer variables to store user input.
            int num1, num2;

            // Print a standard "Hello, World!" message to the console.
            Console.WriteLine("Hello, World!");

            // Prompt the user to enter the first number.
            Console.WriteLine("Enter first number");
            // Read the user's input from the console and convert it to an integer.
            num1 = Convert.ToInt32(Console.ReadLine());

            // Prompt the user to enter the second number.
            Console.WriteLine("Enter second number");
            // Read the user's input and convert it to an integer.
            num2 = Convert.ToInt32(Console.ReadLine());

            // Calculate the sum of the two numbers and store it in the static 'sum' variable.
            sum = num1 + num2;

            // Print the calculated sum to the console, concatenating strings.
            Console.WriteLine("The sum is: " + sum);

            // Call the Addition method, which returns a tuple, and store the result in 'myResult'.
            // This demonstrates how to call a method and handle its return value.
            var myResult = Addition(num1, num2);

            // Declare a string variable 'name'.
            string name = "abcd";

            // Use the null-coalescing operator (??) to assign a value to 'displayName'.
            // If 'name' is not null, 'displayName' gets the value of 'name'.
            // Otherwise, 'displayName' gets the value "Unknown".
            // Note: In this specific code, 'name' is "abcd", so 'displayName' will be "abcd".
            string displayName = name ?? "Unknown";

            // Print the value of 'displayName' to the console.
            // Output will be "abcd", not "Unknown" as commented in the original code.
            Console.WriteLine(displayName); // Output: abcd

            // Print the 'firstnumber' element of the tuple returned by the Addition method.
            Console.WriteLine(myResult.firstnumber); // Output: the value of num1
        }

        // Define a static method named Addition that takes two integers.
        // It returns a tuple containing the two input numbers and their sum.
        static (int firstnumber, int secondnumber, int result) Addition(int firstnumber, int secondnumber)
        {
            // Print a message to indicate that the method has been called.
            Console.WriteLine("Reached Addition method");

            // Calculate the sum of the two input parameters and update the static 'sum' variable.
            sum = firstnumber + secondnumber;

            // Print a formatted string to the console, showing the sum of the two numbers.
            // {0}, {1}, and {2} are placeholders for firstnumber, secondnumber, and sum respectively.
            Console.WriteLine("The sum of {0} and {1} is :{2}", firstnumber, secondnumber, sum);

            // Return a tuple containing the input numbers and their sum.
            return (firstnumber, secondnumber, sum);
        }
    }
}

