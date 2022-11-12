class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, numericality: { only_float: true }, :inclusion => { :in => 0..5 }

end
