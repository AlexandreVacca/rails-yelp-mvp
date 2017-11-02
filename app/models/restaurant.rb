class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :address, :name, presence: true
   VALID_CATEGORY = %w(chinese italian japanese french belgian)
  validates_inclusion_of :category, :in => VALID_CATEGORY
end
