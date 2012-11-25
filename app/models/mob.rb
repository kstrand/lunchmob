class Mob < ActiveRecord::Base
  attr_accessible :message, :name, :restaurant_id, :meet_up_location_id
	has_many :users

  belongs_to :restaurant
  belongs_to :meet_up_location

  scope :active, where(:active => true)

  def all_numbers
    # This generates an array of numbers for each user in the mob
    # => ['213-152-1238', '129-438-2819', ...]
    users.map(&:phone_number)
  end

  def self.deactivate_all
    active.update_all(:active => false)
  end

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
