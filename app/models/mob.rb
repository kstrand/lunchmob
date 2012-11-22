class Mob < ActiveRecord::Base
  attr_accessible :message, :name
	has_many :users

  def all_numbers
    # This generates an array of numbers for each user in the mob
    # => ['213-152-1238', '129-438-2819', ...]
    users.map(&:phone_number)
  end

  def message_users(message_text)
    msg = Message.create(body: message_text)

    msg.send_sms(self.all_numbers)
  end
end
