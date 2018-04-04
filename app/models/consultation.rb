class Consultation < ApplicationRecord
  belongs_to :user
  belongs_to :advisor
  has_one :review
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :status, inclusion: { allow_blank: true, in: ["Pending", "Accepted", "Cancelled", "Done"] }
end
