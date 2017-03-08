inbox = Array.new
while true

puts "Would you like to (s)ave or (r)etrieve a message or (e)xit?"
answer = gets.chomp.downcase

if answer == "s"
    puts "What is your message?"
    input = gets.chomp
    inbox << input
    puts "Your message ID is: " + (inbox.length-1).to_s

elsif answer == "r"
    puts "What is your message ID?"
    number = gets.to_i
    puts "Your messsage is: " + (inbox[number]).to_s

elsif answer == "e"
    break

end
end