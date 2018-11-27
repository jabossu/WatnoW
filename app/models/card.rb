class Card < ApplicationRecord
  validates :title, presence: true
  validates :mood, presence: true
end
