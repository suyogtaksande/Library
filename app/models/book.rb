class Book < ApplicationRecord
  belongs_to :library
  has_many :book_checkouts
  has_many :users, through: :book_checkouts
end
