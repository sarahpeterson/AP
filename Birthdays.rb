puts "What month were you born in?"
month = gets.chomp.downcase

case month
	when "january", "febaruary", "march"
		puts "You were born in the Winter!"
	when "april", "may", "june"
		puts "You were born in the Spring!"
	end
