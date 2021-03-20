class Drink < ApplicationRecord
  self.inheritance_column = :_type_disabled

  has_one_attached :photo
  has_many :products, dependent: :destroy
  has_many :tenders
end
