class ChangeNews < ActiveRecord::Migration
  def self.up
  	rename_table :news, :newsitems
  end

  def self.down
  	rename_table :newsitems, :news
  end
end
