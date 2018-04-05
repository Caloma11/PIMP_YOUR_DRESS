class Review < ApplicationRecord
  belongs_to :consultation
  validates :rating, presence: true, inclusion: { in: (0..5) }
  validates :content, presence: true

  ratyrate_rateable "consultation"

end
