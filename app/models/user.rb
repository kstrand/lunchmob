require 'twilio-ruby'

class User < ActiveRecord::Base
  attr_accessible :name, :phone_number, :email
  validates_uniqueness_of :name, :scope => :phone_number
  validates :phone_number, :format => { :with => /^\(?([2-9][0-8][0-9])\)?[-]([2-9][0-9]{2})[-]([0-9]{4})$/, :message => "please use dashes, thanks" }
  validates_presence_of :name
  belongs_to :mob

	def capitalize_first_letter
		self.name.split(' ').map{|w| w.capitalize }.join(' ')
	end

end
