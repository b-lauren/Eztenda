class AddStatusToTenders < ActiveRecord::Migration[6.0]
  def change
    add_column :tenders, :status,  :string,  default: "Open"
  end
end
