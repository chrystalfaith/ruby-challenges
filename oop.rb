class Library
	
	attr_accessor :creator, :title

end

class Music < Library

	attr_writer :name
	attr_reader :name	
end

class Books < Library

	attr_accessor :type

end

listening_to = Music.new
listening_to.name = "I'm an Albatraoz"
listening_to.creator = "AronChupa"
listening_to.title = "Ultra 2015"

song = listening_to.name
artist = listening_to.creator
album = listening_to.title

reading_now = Books.new
reading_now.type = "e-book"
reading_now.creator = "Tony Robbins"
reading_now.title = "Awaken the Giant Within"

format = reading_now.type
author = reading_now.creator
book = reading_now.title

puts "I'm listening to '#{song}' by #{artist} from the #{album} album. I'm also reading the '#{book}' #{format} by #{author}."

puts listening_to.inspect
puts reading_now.inspect