class BatchCreate2 < ActiveRecord::Migration
  def self.up
  	create_table "posts", :primary_key => "p_id", :force => true do |t|
  		t.string	"title", 								:null => false
  		t.text		"body",									:null => false
  		t.integer	"a_id",									:null => false
  		t.datetime	"created_at",							:null => false
  		t.datetime 	"updated_at",							:null => false
  		t.integer	"type",									:null => false
  	end
  	
  	add_index "posts", ["a_id"], :name => "a_id"
  	
  	create_table "comments", :primary_key => "c_id", :force => true do |t|
  		t.text 		"body",									:null => false
  		t.integer	"p_id",									:null => false
  		t.string	"user",									:null => false
  		t.datetime	"created_at",							:null => false
  	end
  	
  	add_index "comments", ["p_id"], :name => "p_id"
  end

  def self.down
  	drop_table "posts"
  	drop_table "comments"
  end
end
