class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], message: "%{value} is not a valid category" }
  # validates :reviews, inclusion: { in: [1, 2, 3, 4, 5] }
end
