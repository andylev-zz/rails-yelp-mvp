class Review < ApplicationRecord
  belongs_to :restaurant

 validates :content, :reviews, :restaurant_id, presence: true
 validates :reviews, inclusion: { in: (0..5), message: "reviews should be between 0 and 5"}
 validates :reviews, numericality: { only_integer: true }
end
