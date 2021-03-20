class CreateTenders < ActiveRecord::Migration[6.0]
  def change
    create_table :tenders do |t|
      t.string :tender_name
      t.date :close_date
      t.text :description
      t.string :location
      t.integer :volume
      t.integer :minimum_bid

      t.timestamps
    end
  end
end
