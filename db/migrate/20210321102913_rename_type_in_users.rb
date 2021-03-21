class RenameTypeInUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :type
    add_column :users, :user_type, :text
  end
end
