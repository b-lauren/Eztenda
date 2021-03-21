class Bid < ApplicationRecord
  belongs_to :tender
  belongs_to :user
  belongs_to :product

  has_rich_text :offer_description
end
