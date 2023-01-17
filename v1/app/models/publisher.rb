class Publisher < ApplicationRecord
  has_many :books

  validates :name, presence: true, length: { in: 2..40 }
end
