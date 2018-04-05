class Advisor < ApplicationRecord
  belongs_to :user
  has_many :consultations


  def city
    user.city
  end

  def average
    self.consultations.map(&:rating_average).map(&:avg).inject(:+) / self.consultations.size
  end

  def self.cities
    joins(:user).map{|a| a.user.city}.uniq.reject(&:blank?).sort
  end

end
