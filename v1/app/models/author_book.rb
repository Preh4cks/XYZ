class AuthorBook < ApplicationRecord
  belongs_to :book
  belongs_to :author

  validates :book, :author, presence: true
end
