class Product < ApplicationRecord
  belongs_to :drink
  has_many :users
  has_many :bids

  has_one_attached :photo, dependent: :destroy
  # has many users bit  part of the schema doesnt make sense
end
