puts "Can I tell you something? Y/N?"
answer = gets.chomp.downcase

love_lines = [
	"We get old and get used to each other.",
	"We read each other's minds.",
	"We know what the other wants without asking.",
	"Sometimes we irritate each other a little bit.",
	"Maybe sometimes we take each other for granted.",
	"But once in awhile, like today, I meditate on it and realize how lucky I am to share my life with you."
]

total_love_lines = love_lines.size
love_letter = 0

while (love_letter <= total_love_lines)

	if answer.downcase == "y"
	puts love_lines[love_letter]
	love_letter += 1
	elsif answer.downcase == "n"
	puts "I love you anyway."
	break
	end
	
end