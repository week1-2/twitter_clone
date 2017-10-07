class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :email, :user_name, presence: true
  
  acts_as_follower
  acts_as_followable       

  has_many :tweets, -> { order 'created_at DESC' }
  mount_uploader :avatar, AvatarUploader

end



