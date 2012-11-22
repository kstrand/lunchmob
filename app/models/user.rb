require 'twilio-ruby'

class User < ActiveRecord::Base
  attr_accessible :name, :phone_number, :email
  validates_uniqueness_of :name, :scope => :phone_number

  belongs_to :mob

end
