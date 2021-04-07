class Book < ApplicationRecord
  belongs_to :category
  validates :title, :author, :description, :year, :price, presence: true
  validates :title, uniqueness: true
  validates :year, :price, numericality: { only_integer: true }
end
