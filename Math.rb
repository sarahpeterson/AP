puts "Enter a math equation below: "
answer1 = gets.chomp

for i in 0..(answer1.length)
	case answer1[i] 
	when '+'
		numbers = answer1.split('+')
		puts (numbers[0].to_i) + (numbers[1].to_i)
	when '-'
		numbers = answer1.split('-')
		puts (numbers[0].to_i) - (numbers[1].to_i)
	when '/'
		numbers = answer1.split('/')
		puts (numbers[0].to_i) / (numbers[1].to_i)
	when '*'
		numbers = answer1.split('*')
		puts (numbers[0].to_i) * (numbers[1].to_i)
	end
end