#puts "What is your name?"
#answer = gets

#puts "How old are you?"
#age = gets

#puts "In 5 years you will be " + (age.to_i + 5).to_s

#if true
	#puts "True!"
#end

puts "What is the length of your garden?"
answer = gets

puts "What is the width of your garden?"
answer2 = gets

puts "The area of your garden is:" + (answer.to_i * answer2.to_i).to_s
puts "The perimeter of your garden is:" + (answer.to_i * 2).to_s + (answer2.to_i * 2).to_s

# if true
# 	puts "You can plant this many carrots:" + ((answer.to_i * answer2.to_i) * 16).to_s
# end

# if true
# 	puts "You can plant " + ((answer.to_i * answer2.to_i) * 3).to_s + " corn"
# end

# if true
# 	puts "You can plant " + ((answer.to_i * answer2.to_i) * 9).to_s + " beets"
# end

puts "Do you want to plant carrots, corn, or beets?"
answer3 = gets

if answer3 = "carrots"
	puts "You can plant this many carrots:" + ((answer.to_i * answer2.to_i) * 16).to_s
