class AddChangesToTenderModel < ActiveRecord::Migration[6.0]
  def change
    change_column :tenders, :volume, :text
    add_column :tenders, :start_date, :date
    add_column :tenders, :tender_auction_expiry, :datetime
  end
end
