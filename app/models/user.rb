require 'twilio-ruby'

class User < ActiveRecord::Base
  attr_accessible :name, :number
end
