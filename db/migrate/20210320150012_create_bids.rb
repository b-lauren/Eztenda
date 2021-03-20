class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.text :offer_description
      t.integer :offer_price
      t.text :offer_add_ons
      t.string :wholesaler

      t.timestamps
    end
  end
end
