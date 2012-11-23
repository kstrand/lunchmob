namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    if Rails.env.production?
      raise "This task should not be used in production"
    end
    Mob.delete_all 
    User.delete_all
    User.create([
      {:name => "Mahoney", :phone_number => "917-545-5771", :email => "dek1dek@gmail.com"},
      {:name => "Kyle", :phone_number => "917-545-5771", :email => "dek1dek@gmail.com"},
      {:name => "Just you wait", :phone_number => "917-545-5771", :email => "dek1dek@gmail.com"},
      {:name => "Bill Defoe", :phone_number => "917-545-5771", :email => "dek1dek@gmail.com"},
      {:name => "Ice Cube", :phone_number => "917-545-5771", :email => "dek1dek@gmail.com"},
      {:name => "Suzie", :phone_number => "917-545-5771", :email => "dek1dek@gmail.com"},
      {:name => "Janet", :phone_number => "917-545-5771", :email => "dek1dek@gmail.com"},
      {:name => "Keri", :phone_number => "917-545-5771", :email => "dek1dek@gmail.com"},
      {:name => "Kelly", :phone_number => "917-545-5771", :email => "dek1dek@gmail.com"},
      {:name => "Nigle", :phone_number => "917-545-5771", :email => "dek1dek@gmail.com"},
      {:name => "Jackson", :phone_number => "917-545-5771", :email => "dek1dek@gmail.com"},
      {:name => "Sam", :phone_number => "917-545-5771", :email => "dek1dek@gmail.com"},
      {:name => "Bob", :phone_number => "917-545-5771", :email => "dek1dek@gmail.com"},
      {:name => "Dan", :phone_number => "917-545-5771", :email => "dek1dek@gmail.com"},
    ])
  end
end
