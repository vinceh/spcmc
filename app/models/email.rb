class Email < ActiveRecord::Base
	
set_primary_key "id"

validates_presence_of :email

end