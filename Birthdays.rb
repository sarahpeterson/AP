puts "What month were you born in?"
month = gets.chomp.downcase

case month
	when "january", "february", "december"
		puts "You were born in the Winter!"
	when "april", "may", "march"
		puts "You were born in the Spring!"
	when "june", "july", "august"
		puts "You were born in the Summer!"
	when "september", "october", "november"
		puts "You were born in the Fall!"
	end
