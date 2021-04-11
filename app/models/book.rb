# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :category
  validates :title, :author, :description, :year, :price, presence: true
  validates :title, uniqueness: true
  validates :year, :price, numericality: { only_integer: true }
  has_one_attached :image
end
