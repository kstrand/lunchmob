class Mob < ActiveRecord::Base
  attr_accessible :message, :name
	has_many :users

  scope :active, where(:active => true)

  def all_numbers
    # This generates an array of numbers for each user in the mob
    # => ['213-152-1238', '129-438-2819', ...]
    users.map(&:phone_number)
  end

  def self.deactivate_all
    active.update_all(:active => false)
  end
end
