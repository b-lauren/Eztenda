class AddExtraFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :company, :text
    add_column :users, :address, :text
    add_reference :users, :products, index: true
  end
end
