class Brief < ApplicationRecord
  belongs_to :student

  validates :texto, presence: true, length: { in: 10 .. 300 }
end
