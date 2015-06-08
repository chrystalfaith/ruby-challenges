require 'yahoo_weatherman'

client = Weatherman::Client.new
response = client.lookup_by_location('colorado springs, co').condition['temp']

response.location['city'] # => "Colorado Springs"
response.location['state'] # => "CO"
response.condition['date'] # => #<Date: -1/2,0,2299161>

puts response