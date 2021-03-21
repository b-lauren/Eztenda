class AddApproveOrRejectForBids < ActiveRecord::Migration[6.0]
  def change
    add_column :bids, :state,  :string,  default: "Pending"
  end
end
