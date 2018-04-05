class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :photo, PhotoUploader
  attr_accessor :user_type
  has_one :advisor, inverse_of: :user, dependent: :destroy
  accepts_nested_attributes_for :advisor

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, presence: true
  validates :last_name, presence: true

  # has_many :advisors, through: :consultation

  has_many :consultations
  # validates :city, presence: true


  after_create :create_advisor




  def create_advisor
    return if user_type.nil?
    if self.user_type.downcase == "advisor"
      Advisor.find_or_initialize_by(user: self).save!
    end
  end
end
