require 'twilio-ruby'

class Message < ActiveRecord::Base
  attr_accessible :body, :last_send_time, :next_send_time

  #ACCOUNT_SID = "xxxxxxxxxxxxxxxxxxx"
  #AUTH_TOKEN  = "xxxxxxxxxxxxxxxxxxx"
  #FROM_NUMBER = "phone number"


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
       begin
          message.send_sms([user.phone_number])
        rescue Twilio::REST::RequestError => ex
          puts "invalid number #{user.phone_number}, moving on..."
          next
        rescue Exception => ex  # store exception into a variable 
          puts ex.class # then puts it to console
        end
      end
    end
  end

  
end
