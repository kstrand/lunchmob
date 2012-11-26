require 'twilio-ruby'

class User < ActiveRecord::Base
  attr_accessible :name, :phone_number, :email
  validates_uniqueness_of :name, :scope => :phone_number
  validates_presence_of :name

  belongs_to :mob

end
