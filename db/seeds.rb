# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
Account.create(:first_name => "admin", :last_name => "admin", :password => Digest::SHA1.hexdigest('1234'), :email => "sungjin63@gmail.com", :birthday => Time.now, :account_type => true)
