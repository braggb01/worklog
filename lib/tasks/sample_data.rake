namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    # make_microposts
    # make_relationships
  end
end

def make_users
  admin = User.create!(name: "Brian Bragg",
                       email:    "brian.bragg@mssm.edu",
                       password: "w1z@rd",
                       password_confirmation: "w1z@rd")
  admin.toggle!(:admin)
  admin2 = User.create!(name: "Alfred Ruigomez",
                       email:    "alfred.ruigomez@mssm.edu",
                       password: "aca1117",
                       password_confirmation: "aca1117")
  admin2.toggle!(:admin)
  30.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@mssm.edu"
    password  = "password"
    User.create!(name:     name,
                 email:    email,
                 password: password,
                 password_confirmation: password)
  end
end