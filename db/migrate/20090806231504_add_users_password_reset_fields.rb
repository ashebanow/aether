class AddUsersPasswordResetFields < ActiveRecord::Migration
  def self.up
    add_index :users, :perishable_token  

    # add some other useful indices so that lookups aren't slow
    add_index :users, :persistence_token  
    add_index :users, :login
    add_index :users, :email
  end

  def self.down
  end
end
