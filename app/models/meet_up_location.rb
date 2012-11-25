class MeetUpLocation < ActiveRecord::Base
  attr_accessible :description, :name
  belongs_to :mob
end
