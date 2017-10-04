class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_follower
  acts_as_followable       


  validates :name, :email, :user_name, presence: true

  mount_uploader :avatar, AvatarUploader

  has_many :tweets
end
