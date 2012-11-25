require 'twilio-ruby'

class Message < ActiveRecord::Base
  attr_accessible :body, :last_send_time, :next_send_time

  ACCOUNT_SID = "ACfef5f3157ba1448a48fa9669343882ba"
  AUTH_TOKEN  = "e7c7f97d5a14915926cb25dac437a417"
  FROM_NUMBER = "+1(917)525-2342"


  def send_sms(numbers)
    client = Twilio::REST::Client.new ACCOUNT_SID, AUTH_TOKEN

   # numbers.each do |number|
      @msg = client.account.sms.messages.create(
        :from => FROM_NUMBER,
        :to => numbers,
        :body => self.body
      )
    #end
  end

  def send_daily_mob
    @mobs = Mob.all
    @mobs.each do |mob|
      mob.users.each do |user|
        message = Message.create(:body => "Click on this link #{BASE_URL}/mobs/#{mob.id}/users/#{user.id}")
        message.send_sms([user.phone_number])
      end
    end
  end
end
