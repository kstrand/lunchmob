require 'time'

def weekend?
	today = Time.now
 	today.sunday? && today.saturday?
 	
end

p weekend?


def test_date
	if weekend?
		puts "fuckyeah" 
	else
		puts "get to work"
	end
end
	 
puts test_date
