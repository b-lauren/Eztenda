class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  USER_TYPE = ['Venue - Buyers', 'Drinks brand - Sellers']

  validates :type, inclusion: { in: USER_TYPE }

  has_one_attached :photo
  has_many :bids
  has_many :tenders
end
