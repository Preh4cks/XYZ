class Publisher < ApplicationRecord
  has_many :books

  validates :last_name, presence: true, length: { in: 2..20 }
  validates :middle_name, :first_name, length: {minimum: 2, maximum: 20}, allow_blank: true
end
