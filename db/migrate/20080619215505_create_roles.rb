class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :name, :null => false
    end
    add_index "roles", ["name"], :name => "ix_roles_name"
    
    create_admin_user
  end
  
  def self.create_admin_user
    #Make sure the role migration file was generated first    
    Role.create(:name => 'administrator')
    
    #Then, add default admin user
    #Be sure change the password later or in this migration file
    user = User.new
    user.login = "admin"
    user.email = "info@yourapplication.com"
    user.password = "woohoo"
    user.password_confirmation = "woohoo"
    user.save(false)
    user.send(:activate!)
    role = Role.find_by_name('administrator')
    user = User.find_by_login('admin')
    permission = Permission.new
    permission.role = role
    permission.user = user
    permission.save(false)
  end

  def self.down
    drop_table :roles
    Role.find_by_name('administrator').destroy   
    User.find_by_login('admin').destroy
  end
end
