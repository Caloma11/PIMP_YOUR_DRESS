class Advisor < ApplicationRecord
  belongs_to :user
  has_many :consultations


    include PgSearch

    pg_search_scope :global_search,
      against: [ :category ],
      associated_against: {
        user: [ :first_name, :last_name, :city ]
      },
      using: {
        tsearch: { prefix: true }
    }

  # include PgSearch
  #   pg_search_scope :search, :associated_against => {
  #   :user => [:city, :first_name]
  # }

  def city
    user.city
  end

  def average
    if self.consultations != []
      self.consultations.map(&:rating_average).map(&:avg).inject(:+) / self.consultations.size
    end
  end

  def self.cities
    joins(:user).map{|a| a.user.city}.uniq.reject(&:blank?).sort
  end

end
