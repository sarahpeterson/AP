puts "What month were you born in?"
month = gets.chomp.downcase

# if month == "january"|| month == "february" || month == "march"
# 	puts "You were born in the Winter!"


# elsif month == "april"|| month == "may" || month == "june"
# 	puts "You were born in the Spring!"


# elsif month == "july"|| month == "august" || month == "september"
# 	puts "You were born in the Summer!"


# elsif month == "october"|| month == "november" || month == "december"
# 	puts "You were born in the Winter!"

# end

case month
	when "january", "febaruary", "march"
		puts "You were born in the Winter!"
	when "april", "may", "june"
		puts "You were born in the Spring!"
	end
		

