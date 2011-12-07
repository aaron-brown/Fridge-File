require 'faker'

namespace :db do
    desc "Populate database with sample data"
    task :populate => :environment do
      Rake::Task['db:reset'].invoke
         make_users
         make_microposts
         make_groups
    end
    
    def make_users
      User.create!(:name => "John Doe",
                   :email => "jdoe@cs.utsa.edu")
          
      99.times do |n|
        name = Faker::Name.name
        email = "name-#{n+1}@cs.utsa.edu"
        User.create!(:name => name,
                     :email => email)
      end
    end
end

