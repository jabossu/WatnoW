class Card < ApplicationRecord
  validates :title, presence: true
  validates :mood, presence: true
  validates :user_id, presence: true
  
  belongs_to :user
end
