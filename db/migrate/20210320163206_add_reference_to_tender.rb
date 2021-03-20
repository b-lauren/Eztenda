class AddReferenceToTender < ActiveRecord::Migration[6.0]
  def change
  add_reference :tenders, :user, index: true
  end
end
