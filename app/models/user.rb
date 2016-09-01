class User < ApplicationRecord

  after_create :send_welcome_email

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :books
  has_many :garages
  has_many :checkups, through: :books

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

end
