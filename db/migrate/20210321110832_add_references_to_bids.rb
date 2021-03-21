class AddReferencesToBids < ActiveRecord::Migration[6.0]
  def change
    add_reference :bids, :product, index: true
    add_reference :bids, :tender, index: true
    add_reference :bids, :user, index: true
  end
end
