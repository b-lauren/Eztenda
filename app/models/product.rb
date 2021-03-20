class Product < ApplicationRecord
  belongs_to :drink
  has_many :users
  # has many users bit  part of the schema doesnt make sense
end
