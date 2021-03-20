class AddReferenceToProduct < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :drink, index: true
    end
end
