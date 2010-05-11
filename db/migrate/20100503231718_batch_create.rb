class BatchCreate < ActiveRecord::Migration
  def self.up
   create_table "accounts", :primary_key => "a_id", :force => true do |t|
  		t.string 	"first_name",								:null => false
  		t.string 	"last_name",								:null => false
  		t.string	"password",									:null => false
  		t.string	"email",									:null => false
  		t.date		"birthday",									:null => false
  		t.string	"gender"
  		t.boolean	"baptized"
  		t.string	"phone_number"
  		t.boolean	"account_type",		:default => 0,			:null => false
  	end
  	
  	create_table "calendars", :primary_key => "c_id", :force => true do |t|
  		t.string	"link",										:null => false
  	end
  	
  	create_table "news", :primary_key => "n_id", :force => true do |t|
  		t.string	"title",									:null => false
  		t.text		"body",										:null => false
  		t.datetime	"created_at",		:default => Time.now,	:null => false
  	end

   	create_table "emails", :force => true do |t|
  		t.string 	"email",									:null => false
  	end
  end

  def self.down
  	drop_table :accounts
  	drop_table :calendars
  	drop_table :news
  	drop_table :emails
  end
end
