class Category < ActiveRecord::Base
  attr_accessible :icon_url, :name
  validates_presence_of :name

  has_many :restaurants

end
