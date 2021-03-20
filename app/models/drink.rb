class Drink < ApplicationRecord
    has_many :products
    self.inheritance_column = :_type_disabled
end
