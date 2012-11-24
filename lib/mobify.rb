class Mobify
## making max mobs of six
#   def self.todays_mob_sizes(num_users)
#     mob_sizes = [6,5,4,3,2]
#     todays_mob_sizes = []

#     if num_users < 2
#       return []
#     elsif num_users <= 3
#       return [num_users]
#     end

#     mob_sizes.each do |mob_size|
#       num_mobs, stragglers = num_users.divmod(mob_size)
#       if (num_mobs < 2)
#         next
#       else
#         1.upto(num_mobs) do |i|
#           todays_mob_sizes << mob_size
#         end
#         if stragglers > 0
#           tempe = todays_mob_sizes[-1] + stragglers
#           quotient, remainder = tempe.divmod(2)
#           todays_mob_sizes << (quotient + remainder)
#           todays_mob_sizes << quotient
#         end
#         return todays_mob_sizes
#       end
#     end
#   end
# end

  def self.todays_mob_sizes(num_users)
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
end

# for i in 1..7
#   students = (0..50).to_a
#   users = students.sample
#   puts "this was number of students #{users}"
#   todays_mob_sizes(users)
# end


