class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  validates :first_name, presence: true, on: :update
  has_many :attendances, foreign_key: 'participant_id'
  has_many :events, through: :attendances

  #to make a difference between the users who organise events and the users who participate only
	has_many :organisers, foreign_key: 'admin_id', class_name: "Event"

  after_create :send_welcome
  def send_welcome
    UserMailer.welcome_email(self).deliver_now
  end

end
