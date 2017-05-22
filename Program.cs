using System;
using System.Data;
using Gardenbox;


namespace GardenBox
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			bool keepPlanting = true;

			//ask for the width of their garden
			Console.WriteLine("What is the width of your garden?");
			int width = Convert.ToInt32(Console.ReadLine());

			//ask for the length of their garden
			Console.WriteLine("What is the length of your garden?");
			int length = Convert.ToInt32(Console.ReadLine());

			int squareFeet = tClass.SquareFeet(width, length);

			while (keepPlanting == true)
			{

					Console.WriteLine("Would you like to plant some items in your garden? Yes or No");
					string input = Console.ReadLine().ToLower();

					if (input == "yes")
					{
					tClass.printPlants();

					Console.WriteLine("Which plant would you like to plant?");
					string user_plant = Console.ReadLine();
					//split into two functions

					int printPlant = tClass.PlantFeet(user_plant);

					string squarefootage = tClass.SqFootage(squareFeet, printPlant);

					//tell the user how many of their plants they can plant
					Console.WriteLine($"You can plant {squarefootage} {user_plant}(s) in your garden!");

				}

				else if (input == "no")
				{
					Console.WriteLine("Okayyy, Byeee");
					keepPlanting = false;
				}
				else
				{
					Console.WriteLine("Please say Yes or No!");
				}

			}
		}
	}
}
