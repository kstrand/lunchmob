require 'twilio-ruby'

class Message < ActiveRecord::Base
  attr_accessible :body, :last_send_time, :next_send_time

  ACCOUNT_SID = "ACfef5f3157ba1448a48fa9669343882ba"
  AUTH_TOKEN  = "e7c7f97d5a14915926cb25dac437a417"
  FROM_NUMBER = "+1(917)525-2342"

  def send_sms(user)
    client = Twilio::REST::Client.new ACCOUNT_SID, AUTH_TOKEN

    @msg = client.account.sms.messages.create(
     :from => FROM_NUMBER,
     :to => user.number,
     :body => self.body
    )
  end
end

# message = Message.create(:body => "let's do lunch")
# message.send_sms(user)