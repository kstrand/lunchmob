namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    if Rails.env.production?
      raise "This task should not be used in production"
    end
    Mob.delete_all 
    User.delete_all
    User.create([
      {:name => "Mahoney",    :phone_number => "917-545-5771", :email => "dek1dek+12@gmail.com"},
      {:name => "Kyle",       :phone_number => "917-545-5771", :email => "dek1dek+13@gmail.com"},
      {:name => "Olga",       :phone_number => "917-545-5771", :email => "dek1dek+14@gmail.com"},
      {:name => "Bill Defoe", :phone_number => "917-545-5771", :email => "dek1dek+15@gmail.com"},
      {:name => "Ice Cube",   :phone_number => "917-545-5771", :email => "dek1dek+16@gmail.com"},
      {:name => "Suzie",      :phone_number => "917-545-5771", :email => "dek1dek+17@gmail.com"},
      {:name => "Janet",      :phone_number => "917-545-5771", :email => "dek1dek+18@gmail.com"},
      {:name => "Keri",       :phone_number => "917-545-5771", :email => "dek1dek+19@gmail.com"},
      {:name => "Kelly",      :phone_number => "917-545-5771", :email => "dek1dek+11@gmail.com"},
      {:name => "Nigle",      :phone_number => "917-545-5771", :email => "dek1dek+29@gmail.com"},
      {:name => "Jackson",    :phone_number => "917-545-5771", :email => "dek1dek+28@gmail.com"},
      {:name => "Sam",        :phone_number => "917-545-5771", :email => "dek1dek+27@gmail.com"},
      {:name => "Bob",        :phone_number => "917-545-5771", :email => "dek1dek+24@gmail.com"},
      {:name => "Dan",        :phone_number => "917-545-5771", :email => "dek1dek+27@gmail.com"},
    ])+1
  end+1
end
