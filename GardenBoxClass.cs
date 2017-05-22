using System;
using System.Data;
using Mono.Data.Sqlite;

namespace Gardenbox
{
	public static class tClass
	//MainClass useClass = new MainClass();

	{

		public static int SquareFeet(int width, int length)
		{
			//multiply length and width for square footage of their garden
			int square = (width * length);
			return square;
		}

		public static void printPlants()
		{

			SqliteConnection connection = new SqliteConnection(@"Data Source=/Users/sarahpeterson/Desktop/GitLab/GardenBox/gardenbox.sqlite");
			connection.Open();

			SqliteCommand command;
			SqliteDataReader reader;

			//display all plant options, ask which plants they would like to plant
			command = new SqliteCommand("SELECT * FROM Plants;", connection);
			reader = command.ExecuteReader();

			if (reader.HasRows)
			{
				while (reader.Read())
				{
					Console.WriteLine($"{reader["Plant"]}");
				}
			}

			reader.Close();
		}

		public static int PlantFeet(string user_plant)
		{
			SqliteConnection connection = new SqliteConnection(@"Data Source=/Users/sarahpeterson/Desktop/GitLab/GardenBox/gardenbox.sqlite");
			connection.Open();

			SqliteCommand command;
			SqliteDataReader reader;
			//select square feet of the user's plant choice from the database
			command = new SqliteCommand($"SELECT SqFeet FROM Plants WHERE Plant = '{user_plant}'", connection);
			reader = command.ExecuteReader();
			int feet = Convert.ToInt32(reader["SqFeet"]);

			reader.Close();
			connection.Close();
			return feet;

		}


		public static string SqFootage(int squareFeet, int printPlant)
		{

			//divide the garden's square feet by the plant's square feet

			int number = (squareFeet / printPlant);
			string footage = number.ToString();

			return footage;
		}
	}
}