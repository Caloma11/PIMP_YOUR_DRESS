class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :user_type
  has_one :advisor, inverse_of: :user
  accepts_nested_attributes_for :advisor

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :advisors, through: :consultation

  has_many :consultations
  # validates :city, presence: true

end
