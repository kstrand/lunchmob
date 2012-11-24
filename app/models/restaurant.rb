class Restaurant < ActiveRecord::Base
	attr_accessible :category_id, :city, :name, :phone_number, :state, :street_1, :street_2, :zip
	validates_presence_of :name, :category_id, :street_1, :city, :state
	belongs_to :category
end
