
## making max mobs of six 
  def todays_mob_sizes(num_users)
    mob_sizes = [6,5,4,3,2]
    todays_mob_sizes = []

    if num_users < 2 
      return []
    elsif num_users <= 3
       p [num_users]
    end

    mob_sizes.each do |mob_size|
      num_mobs, stragglers = num_users.divmod(mob_size)
        if (num_mobs < 2)        
      else
        for i in 1..num_mobs
          todays_mob_sizes << mob_size
        end
        if todays_mob_sizes[-1] + stragglers > todays_mob_sizes[-1]
         group_to_big  = todays_mob_sizes[-1] + stragglers
           quotient, remainder = group_to_big.divmod(2)
            todays_mob_sizes << (quotient + remainder)
            todays_mob_sizes << quotient
        end
        return  p todays_mob_sizes
      end
    end
  end

for i in 1..7
  students = (0..50).to_a
  users = students.sample
  puts "this was number of students #{users}"
  todays_mob_sizes(users)
end 


