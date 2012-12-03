namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do

    # TODO drop tables instead of deleting all.
   # Mob.delete_all

   #  User.delete_all
   # User.create([
   #   {:name => "Keith",       :phone_number => "917-545-5771", :email => "dek1dek+12@gmail.com"},
   #    {:name => "Kyle",       :phone_number => "917-545-5771", :email => "dek1dek+13@gmail.com"},
   #    {:name => "Olga",       :phone_number => "917-545-5771", :email => "dek1dek+14@gmail.com"},
   #    {:name => "Bill Defoe", :phone_number => "917-545-5771", :email => "dek1dek+15@gmail.com"},
   #    {:name => "Ice Cube",   :phone_number => "917-545-5771", :email => "dek1dek+16@gmail.com"},
   #    {:name => "Suzie",      :phone_number => "917-545-5771", :email => "dek1dek+17@gmail.com"},
   #    {:name => "Janet",      :phone_number => "917-545-5771", :email => "dek1dek+18@gmail.com"},
   #    {:name => "Keri",       :phone_number => "917-545-5771", :email => "dek1dek+19@gmail.com"},
   #    {:name => "Kelly",      :phone_number => "917-545-5771", :email => "dek1dek+11@gmail.com"},
   #    {:name => "Nigle",      :phone_number => "917-545-5771", :email => "dek1dek+29@gmail.com"},
   #    {:name => "Jackson",    :phone_number => "917-545-5771", :email => "dek1dek+28@gmail.com"},
   #    {:name => "Sam",        :phone_number => "917-545-5771", :email => "dek1dek+27@gmail.com"},
   #    {:name => "Bob",        :phone_number => "917-545-5771", :email => "dek1dek+24@gmail.com"},
   #    {:name => "Dan",        :phone_number => "917-545-5771", :email => "dek1dek+27@gmail.com"},
   # ])

    Category.delete_all
    Category.create([
      {:name => "Chinese",  :icon_url => "icons/chinese.png"  },
      {:name => "Mexican",  :icon_url => "icons/mexican.png"  },
      {:name => "Thai",     :icon_url => "icons/thai.png"     },
      {:name => "American", :icon_url => "icons/american.png" },
      {:name => "French",   :icon_url => "icons/french.png"   },
      {:name => "Greek",    :icon_url => "icons/greek.png"    },
    ])

    Restaurant.delete_all
    Restaurant.create([
      {:name => "Pescilla",                           :street_1 =>  "359 Kearny"          },
      {:name => "Wong Pan",                           :street_1 =>  "359 Pine"            },
      {:name => "Chipotle",                           :street_1 =>  "211 Sutter St."      },
      {:name => "Thai Thai",                          :street_1 =>  "653 Clay St."        },
      {:name => "New Golden Daisy",                   :street_1 =>  "1041 Stockton St."   },
      {:name => "Good Mong Kok Bakery",               :street_1 =>  "1039 Stockton St."   },
      {:name => "Bangkok Best",                       :street_1 =>  "301 Kearny St"       },
      {:name => "California Golden Cookies",          :street_1 =>  "255 Kearny St"       },
      {:name => "Boxed Foods Company",                :street_1 =>  "245 Kearny St"       },
      {:name => "Have a Rice Day",                    :street_1 =>  "356 Kearny St"       },
      {:name => "Darn Good Food",                     :street_1 =>  "322 Kearny St"       },
      {:name => "Taqueria Mana",                      :street_1 =>  "439 Stockton St"     },
      {:name => "Sauce",                              :street_1 =>  "56  Belden Pl"       },
      {:name => "Cafe Claude",                        :street_1 =>  "7 Claude Ln"         },
      {:name => "Fleur De Sel",                       :street_1 =>  "308 Kearny St"       },
      {:name => "Good Luck Cafe and Deli",            :street_1 =>  "621 Kearny St"       },
    ])

    MeetUpLocation.delete_all
    MeetUpLocation.create([
      {:name => "Blue lockers" },
      {:name => "Kitchen"      },
      {:name => "Sofas"        },
      {:name => "Main stage"   },
    ])  

    r = Restaurant.find_by_name( "Pescilla" )
    r.category = Category.find_by_name( "Mexican")
    r.save!

    r = Restaurant.find_by_name( "Wong Pan" )
    r.category = Category.find_by_name( "Chinese" )
    r.save!

    r = Restaurant.find_by_name( "Chipotle" )
    r.category = Category.find_by_name( "Mexican" )
    r.save!

    r = Restaurant.find_by_name( "Thai Thai" )
    r.category = Category.find_by_name( "Thai" )
    r.save!

    r = Restaurant.find_by_name( "Bangkok Best" )
    r.category = Category.find_by_name( "Thai"   )
    r.save!

    r = Restaurant.find_by_name( "New Golden Daisy" )
    r.category = Category.find_by_name( "Chinese")
    r.save!

    r = Restaurant.find_by_name( "Good Mong Kok Bakery" )
    r.category = Category.find_by_name( "Chinese")
    r.save!

    r = Restaurant.find_by_name( "California Golden Cookies" )
    r.category = Category.find_by_name( "Chinese")
    r.save!

     r = Restaurant.find_by_name( "California Golden Cookies" )
    r.category = Category.find_by_name( "Greek")
    r.save!

    r = Restaurant.find_by_name( "Boxed Foods Company" )
    r.category = Category.find_by_name( "American")
    r.save!

    r = Restaurant.find_by_name( "Have a Rice Day" )
    r.category = Category.find_by_name( "Chinese")
    r.save!

    r = Restaurant.find_by_name( "Darn Good Food" )
    r.category = Category.find_by_name( "American" )
    r.save!

    r = Restaurant.find_by_name( "Taqueria Mana" )
    r.category = Category.find_by_name( "Mexican" )
    r.save!

    r = Restaurant.find_by_name( "Sauce" )
    r.category = Category.find_by_name( "American" )
    r.save!

    r = Restaurant.find_by_name( "Cafe Claude" )
    r.category = Category.find_by_name( "French" )
    r.save!

    r = Restaurant.find_by_name( "Fleur De Sel" )
    r.category = Category.find_by_name( "French"  )
    r.save!

    r = Restaurant.find_by_name( "Good Luck Cafe and Deli" )
    r.category = Category.find_by_name( "American"  )
    r.save!

   end
end

