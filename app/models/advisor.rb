class Advisor < ApplicationRecord
  belongs_to :user
  has_many :consultations


  def city
    user.city
  end

  def self.cities
    joins(:user).map{|a| a.user.city}.uniq.reject(&:blank?).sort
  end

end
