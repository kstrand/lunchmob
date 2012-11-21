require 'twilio-ruby'

class User < ActiveRecord::Base
  attr_accessible :name, :number
  validates_uniqueness_of :name, :scope => :number

  belongs_to :mob
  
end
