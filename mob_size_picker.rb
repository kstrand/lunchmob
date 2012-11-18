def todays_mob_sizes(num_users)
  # loop over mob sizes, trying the biggest first, and following mob size guidlines.
  # no mob can be bigger than 6
  # no mob can be less than 2
  # mobsizes should be as big and as equal as possibel without exceeding max mob size.

  mob_sizes = [6,5,4,3,2]
  todays_mob_sizes = []

  # handle the special case of small mobs
  if num_users < 2
    return []
  end
  if num_users <= 3
    return [num_users]
  end

  # calculate the ideal mob sizes for the day.
  mob_sizes.each do |mob_size|
    num_mobs, stragglers = num_users.divmod(mob_size)
    if (num_mobs < 2) or (mob_size + stragglers) > mob_sizes.first
      next #skip to next smallest mob size if the mob size is too big.
    else

      #once ideal mob size is found, create todays_mobs array.
      for i in 1..num_mobs
        puts "todays_mob_sizes: #{todays_mob_sizes}"
        todays_mob_sizes << mob_size
      end
      todays_mob_sizes[-1] = todays_mob_sizes[-1] + stragglers
      return todays_mob_sizes
    end
  end
end

m = todays_mob_sizes(14) # this would be number of users in user table
p m