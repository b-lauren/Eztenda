class Tender < ApplicationRecord
  belongs_to :user
  belongs_to :drink

  has_many :bids
end
