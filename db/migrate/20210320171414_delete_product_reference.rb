class DeleteProductReference < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :products, index: true
  end
end
