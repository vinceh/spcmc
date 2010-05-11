class Newsitem < ActiveRecord::Base

	set_primary_key "n_id"

	validates_presence_of :title, :body

end