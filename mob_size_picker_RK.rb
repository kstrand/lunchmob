def todays_mob_sizes(num_users)
  return [] if num_users <= 0
  return [num_users] if num_users <= 3
  return [3, 2] if num_users == 5
  return [3, 3] if num_users == 6
  ideal_sizes = [6, 5, 4, 3, 2]

  ideal_sizes.each do |size|
    num_groups, stragglers = num_users.divmod(size)
    if stragglers == 0
      return [size] * num_groups
    elsif ideal_sizes.include?(stragglers)
      return ([size] * num_groups) << stragglers
    end
  end 
end

# m = todays_mob_sizes(19) # this would be number of users in user table
# p m

50.times do |i|
  p "#{i+1} -> #{todays_mob_sizes(i+1)}"
end 