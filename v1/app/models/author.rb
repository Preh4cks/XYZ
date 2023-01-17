class Author < ApplicationRecord
  has_many :author_books
  has_many :books, through: :author_books

  validates :first_name, :last_name, presence: true, length: { in: 2..20 }
  validates :middle_name, length: {minimum: 5, maximum: 5}, allow_blank: true
end
