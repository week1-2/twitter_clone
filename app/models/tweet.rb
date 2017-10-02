class Tweet < ApplicationRecord
  belongs_to :user

  validates :text, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
end
