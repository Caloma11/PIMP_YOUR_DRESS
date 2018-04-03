class Advisor < ApplicationRecord
  belongs_to :user
  has_many :consultations
  # validates :bio, presence: true
  # validates :city, presence: true

  def self.cities
    Advisor.select(:city).uniq.pluck(:city).sort
  end

end
