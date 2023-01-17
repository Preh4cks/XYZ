class Book < ApplicationRecord
  belongs_to :publisher
  has_many :author_books
  has_many :authors, through: :author_books

  validates :title, :isbn_13, :price, :publication_year, :publisher, presence: true
  validates :isbn_13, uniqueness: true

  validate :validate_isbn13
  validate :validate_isbn10

  before_validation :delete_underscore

# Validates and Return if ISBN-13 is Valid
# @param isbn string
# @return boolean
def self.check_isbn13 isbn
  total = 0

  if(isbn.length == 13)     
    # Loop through each except the last 1
    (0...isbn.length - 1).each do |i|
      num = isbn[i]

      # Alternate between 1 and 3 multipliers
      if(i % 2 == 0) 
        total += num.to_i * 1
      else
        total += num.to_i * 3
      end
    end

    # Check if the it equates to the last number
    if((10 - (total%10)) == isbn[-1].to_i)
      return true
    end
  end

  return false
end

# Validates and Return if ISBN-10 is Valid
# @param isbn string
# @return boolean
def self.check_isbn10 isbn
  total = 0
  mul = 10

  # Loop through each number
  if(isbn.length == 10)
    (0..isbn.length).each do |i|
      num = isbn[i]

      if(num == "X" || num == "x")
        num = 10
      else 
        num = num.to_i
      end

      total += num * mul
      mul -= 1
    end

    if((total % 11) == 0)
      return true
    end
  end

  return false
end

private
  def delete_underscore
    self.isbn_13.delete! "-"
    self.isbn_10.delete! "-"
  end

  def validate_isbn13 
    if(!Book.check_isbn13(self.isbn_13))
      errors.add(:isbn_13, "Invalid!" )
    end
  end

  def validate_isbn10
    if(!self.isbn_10) 
      self.isbn_10 = self.isbn_13[3..-2]
  
      total = 0
      mul = 10
  
      # Loop through each number
      (0..self.isbn_10.length).each do |i|
        num = self.isbn_10[i]
        total += num.to_i * mul
        mul -= 1
      end
  
      self.isbn_10 = self.isbn_10 + (11 - (total % 11)).to_s
    else
      if(!Book.check_isbn10(self.isbn_10))
        errors.add(:isbn_10, "Invalid!" )
      end
    end
  end
end
