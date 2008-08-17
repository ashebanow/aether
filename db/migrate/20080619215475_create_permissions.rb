class CreatePermissions < ActiveRecord::Migration
  def self.up
    create_table :permissions do |t|
      t.integer :role_id, :user_id, :null => false
      t.timestamps
    end
    add_index "permissions", ["user_id"], :name => "ix_perm_user"
    add_index "permissions", ["role_id"], :name => "ix_perm_role"
  end

  def self.down
    drop_table :permissions
  end
end
