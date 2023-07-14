class User < ApplicationRecord
	has_many :book_checkouts
	has_many :books, through: :book_checkouts
end
