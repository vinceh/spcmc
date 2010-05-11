class Account < ActiveRecord::Base

	set_primary_key "a_id"
	
	validates_presence_of :first_name, :last_name, :password, :email, :birthday
	
	validates_confirmation_of :password
end