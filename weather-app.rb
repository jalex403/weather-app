require 'yahoo_weatherman'



def get_forcast (location)
  
  client = Weatherman::Client.new 
  weather = client.lookup_by_location(location)
  puts "Your extended forcast for #{weather.location['city']}, #{weather.location['region']}, #{weather.location['country']} is:"
  
  weather.forecasts.each_with_index do |day, index|
    if index == 0
      print "Today's"
    elsif index == 1
      print "Tomorrow's"
    else
      print day["day"]
    end
    puts " is going to be #{day['text']} with a low of #{day['low']} and a high of #{day['high']} degrees celsius."
    
  end
  
end


puts "Jorge's Weather App"
puts "Please enter your Zip or City, Country"
location = gets.chomp

get_forcast (location)