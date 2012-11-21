class Mob < ActiveRecord::Base
  attr_accessible :message, :name

	has_many :users

end
