class CreateDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.string :type
      t.text :description
      t.text :unit_of_measurement

      t.timestamps
    end
  end
end
