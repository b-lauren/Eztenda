class AddReferenceToTenders < ActiveRecord::Migration[6.0]
  def change
    remove_column :tenders, :location
    add_reference :tenders, :drink, index: true
  end
end
